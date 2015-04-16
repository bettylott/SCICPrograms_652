//
//  CourseTableController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/13/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "CourseTableController.h"




@interface CourseTableController ()

@end

@implementation CourseTableController

NSArray *courses = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getCourses];
   
}

-(void) getCourses {
    
    
    //NSLog (@"name is: %@", );
    
   //if ([Program:.name @"name"] isEqualTo @"CIS"]){
    
    NSString *CIS206 = @"206 Business Software Applications";
    
    NSString *CIS300 = @"300 Foundation Information Systems";
    
    NSString *CIS313 = @"313 Intro to Database Concepts";
    
    NSString *CIS318 = @"318 Ethics for IT Professional";
    
    NSString *CIS325 = @"325 Systems Analysis and Design";
    
    NSString *CIS445 = @"445 Database Management";
    
    NSString *CIS448 = @"448 IT Project Management";
    
    NSString *CIS458 = @"458 Business Process Management";
    
    NSString *CIS463 = @"463 E-Commerce Technology Management";
    
    NSString *CIS480 = @"480 Mng Tech for Bus Strategies";
    
    NSArray *CISCourses = [NSArray arrayWithObjects: CIS206, CIS300, CIS313, CIS318, CIS325, CIS445, CIS448, CIS458, CIS463, CIS480, nil];
    
    courses= CISCourses;
    
    NSLog (@"%@", courses);
    //}
    
    //else {
        //courses = nil;
    //}
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
    // Return the number of rows in the section.
    
    NSLog(@"Courses Count = %li", courses.count);
    return courses.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseCell" forIndexPath:indexPath];
    
    
    
    NSString *course = [courses objectAtIndex:[indexPath row]];
    
    [cell.textLabel setText: course];
    
    return cell;
}


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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    
}


@end
