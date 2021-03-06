//
//  ProgramTableController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/13/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "ProgramTableController.h"
#import "AFNetworking.h"
#import <RestKit/CoreData.h>
#import <RestKit/RestKit.h>
#import "Program.h"
#import "CourseTableController.h"


@interface ProgramTableController ()

@property (nonatomic) NSXMLParser *xmlParser;

@property (nonatomic, strong) NSMutableArray *arrProgramData;

@property (nonatomic, strong) NSMutableDictionary *dictTempDataStorage;

@property (nonatomic, strong) NSMutableString *foundValue;

@property (nonatomic) NSMutableString *xmlRequestString;

@property (nonatomic, strong) NSString *currentElement;

@property (nonatomic, strong) NSMutableDictionary *programsDict;

@property(nonatomic, strong) NSString *elementName;

@property(nonatomic, strong) NSMutableDictionary *currentDictionary;
@property(nonatomic, strong) NSMutableString *outstring;

@property (nonatomic, strong)NSString *cellText;

@property (nonatomic, strong) NSString *programName;


@end

@implementation ProgramTableController

NSMutableData *_responseData;


- (void)fetchProgramsFromContext {
    
    NSManagedObjectContext *context = [RKManagedObjectStore defaultStore].mainQueueManagedObjectContext;
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([Program class])];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"Program.name" ascending:YES];
    fetchRequest.sortDescriptors = @[descriptor];
    
    NSError *error = nil;
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    NSLog(@"data fetched is: %@", fetchedObjects);
    
    [self.tableView reloadData];
    
}

/*
-(NSFetchedResultsController*) fetchedResultsController{
        NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([_program class])];
        fetchRequest.sortDescriptors=@[[NSSortDescriptor sortDescriptorWithKey:@"program.name" ascending:YES]];
        
        self.fetchedResultsController = [[NSFetchedResultsController alloc]
                                         initWithFetchRequest:fetchRequest
                                         managedObjectContext:[RKManagedObjectStore defaultStore].mainQueueManagedObjectContext sectionNameKeyPath:@"program.name" cacheName:@"Program"];
        
        self.fetchedResultsController.delegate = self;
        
        NSError *error;
        [self.fetchedResultsController performFetch:&error];
        NSLog(@"%@", [self.fetchedResultsController fetchedObjects]);
        NSAssert(!error, @"Error performing fetch request:%@", error);
    }
    return fetchedResultsController;
}
*/

-(void) getURLData{
    NSURL *url=[NSURL URLWithString:@"http://regisscis.net/Regis2/webresources/regis2.program"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //added AF request start here
   // AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    AFURLConnectionOperation *operation = [[AFURLConnectionOperation alloc] initWithRequest:request];
    [request setHTTPMethod:@"GET"];
    [[NSURLConnection alloc] initWithRequest:request delegate:self];
}




/*
-(void) getURLData{
NSURL *url=[NSURL URLWithString:@"http://regisscis.net/Regis2/webresources/regis2.program"];

NSMutableURLRequest*request=[NSMutableURLRequest requestWithURL:url];
[request setHTTPMethod:@"GET"];
[[NSURLConnection alloc] initWithRequest:request delegate:self];
}
*/



//NSXMLParser method

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    //may happend multiple times per request, if multipart
    NSLog(@"recieved response");
    _responseData = [[NSMutableData alloc] init];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    //responsible for storing the newly recieved data
    NSLog(@"Recieved data");
    NSLog(@"My data is %@",data);
    
    self.programData = data;
    
    self.dataString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"DataString is %@", self.dataString);
    [_responseData appendData:data];
}

-(NSCachedURLResponse*)connection:(NSURLConnection*)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse{
    return nil; //return nil to indicate a cached response is not necessary
}

-(void)connectionDidFinishLoading:(NSURLConnection*)connection{
    //indicates succesful receipt of the requst
    //parse data here
    NSLog (@"finished loading");
   
    if (self.programData != nil){
        self.xmlParser = [[NSXMLParser alloc] initWithData:self.programData];
        self.xmlParser.delegate = self;
        
        self.foundValue = [[NSMutableString alloc] init];
        
        [self.xmlParser parse];
    }
    
    
    
}

-(void)connection:(NSURLConnection*)connection didFailWithError:(NSError *)error{
    //called if an error occurs, if so no other methods will be called
    NSLog(@"error %@", error);
}

-(void) parserDidStartDocument:(NSXMLParser *)parser{
    self.arrProgramData = [[NSMutableArray alloc] init];
}

-(void) parserDidEndDocument:(NSXMLParser *)parser{
    [self.tableView reloadData];
}

-(void)parser:(NSXMLParser*)parser parseErrorOccurred:(NSError *)parseError{
    NSLog(@"%@", [parseError localizedDescription]);
}

-(void)parser:(NSXMLParser*)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    if([elementName isEqualToString:@"program"]){
        self.dictTempDataStorage = [[NSMutableDictionary alloc] init];
    }
    
    self.currentElement = elementName;
    NSLog (@"Current Element: %@", _currentElement);
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if([elementName isEqualToString:@"program"]){
        [self.arrProgramData addObject:[[NSDictionary alloc] initWithDictionary:self.dictTempDataStorage]];
    }
    else if ([elementName isEqualToString:@"name"]){
        [self.dictTempDataStorage setObject:[NSString stringWithString:self.foundValue] forKey:@"name"];
    }
    
    [self.foundValue setString:@""];
}

-(void)parser:(NSXMLParser*)parser foundCharacters:(NSString*)string{
    if([self.currentElement isEqualToString:@"name"]){
        if(![string isEqualToString:@"\n"]){
            [self.foundValue appendString:string];
            NSLog (@"found Value:%@", self.foundValue);
        }
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog (@"view loading");
    NSLog (@"getting URL data");
    [self getURLData];
    //[self fetchProgramsFromContext];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog (@"count= %li", self.arrProgramData.count);
    return self.arrProgramData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"programCell"];
    
    // Configure the cell...
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [[self.arrProgramData objectAtIndex:indexPath.row] objectForKey:@"name"];
    
    self.cellText = cell.textLabel.text;
    
    //[NSString stringWithFormat:@"%@", [_allPrograms valueForKey:_program]]];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = selectedCell.textLabel.text;
    self.programName = cellText;
    NSLog(@"selected cell text = %@", cellText);
    
    [self performSegueWithIdentifier:@"showCourses" sender:self];
}

//Below are two unsuccesful methods to retrieve data from web service using NSURL URLWithString... decided to switch methods and try NSURLConnection

/*
-(void) getURLData{
    NSLog (@"retrieving URL data");
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    NSError *error = nil;
    NSURL *url = [NSURL URLWithString:@"http://regisscis.net/Regis2/webresources/regis2.program"];
    NSString *response = [NSString stringWithContentsOfURL:url
                                                  encoding:NSASCIIStringEncoding
                                                     error:&error];
    

    if (!error){
        NSError *error = nil;
        NSData *jsonData = [response dataUsingEncoding:NSASCIIStringEncoding];
        NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonData
                                                         options:kNilOptions
                                                           error:&error];
       
        NSLog(@"count = %li", array.count);
    
    NSLog(@"The contents of the array");
        for (int i=0; i <self.allPrograms.count; i++){
            NSLog (@"string: %@", self.allPrograms[i]);
            NSDictionary *pgm = self.allPrograms [i];
            for (id key in pgm){
                id value = [pgm objectForKey:key];
                self.program = value;
            NSLog (@"key: %@, value:%@", key, value);
        }
    }

} else{
    NSLog(@"Error: %@", error);
}
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
        
        NSLog(@"programsTable updated");
    });
    
});
}
*/

/*
-(void) getURLData{
NSURL *url = [NSURL URLWithString:@"http://regisscis.net/Regis2/webresources/regis2.program"];
NSURLRequest *request = [NSURLRequest requestWithURL:url];
[NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
 {
     if (data.length> 0 && connectionError == nil)
     {
         NSDictionary *programs = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
         self.programID =[[programs objectForKey:@"id"] stringValue];
         NSLog(@"program ID is %@", self.programID);
         self.program = [programs objectForKey:@"content"];
         NSLog(@"program is %@", self.program);
     }
 }];
}
*/



/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"programCell" forIndexPath:indexPath];
    
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation
/*
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 if ([segue.identifier isEqualToString:@"showCourses"]) {
 CourseTableController *destViewController = segue.destinationViewController;
     destViewController.selectedProgramName = self.programName;
     NSLog (@"Text sent for cell %@", _programName);
    
 }}
*/

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showCourses"]) {
        NSLog(@"programName before segue: %@", self.programName);
        
        CourseTableController *dvc = (CourseTableController*)segue.destinationViewController;
        dvc.selectedProgramName = self.programName;    }
}


@end
