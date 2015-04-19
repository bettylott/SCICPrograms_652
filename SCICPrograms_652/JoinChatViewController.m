//
//  JoinChatViewController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/18/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "JoinChatViewController.h"

@interface JoinChatViewController ()


@end

@implementation JoinChatViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initNetworkCommunication];
    NSLog(@"chat connection initialized");
    
    _messages=[[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initNetworkCommunication {
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"localhost", 80, &readStream, &writeStream);
    inputStream = (__bridge NSInputStream *)readStream;
    outputStream = (__bridge NSOutputStream*)writeStream;
    
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    [inputStream open];
    [outputStream open];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"ChatCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *s = (NSString *) [_messages objectAtIndex:indexPath.row];
    cell.textLabel.text = s;
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _messages.count;
}


-(void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
    NSLog (@"stream event %lu", streamEvent);
    
    switch (streamEvent) {
            
        case NSStreamEventOpenCompleted:
            NSLog (@"Stream opened");
            break;
            
        case NSStreamEventHasBytesAvailable:
            
            if (theStream ==inputStream){
                uint8_t buffer[1024];
                int len;
                
                while ([inputStream hasBytesAvailable]){
                    len = [inputStream read:buffer maxLength:sizeof(buffer)];
                    if (len>0){
                        NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
                        
                        if (nil != output) {
                            NSLog(@"server said: %@", output);
                            
                            [self messageRecieved:output];
                        }
                    }
                }
            }
            break;
        
        case NSStreamEventErrorOccurred:
            NSLog (@"Can not connect to the host!");
            break;
            
        case NSStreamEventEndEncountered:
            break;
        
        default:
            NSLog(@"Unknown Event");
    }
}

-(void) messageRecieved:(NSString *)message{
    [_messages addObject:message];
    [self.tView reloadData];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)joinChat:(id)sender {
    NSString *response = [NSString stringWithFormat:@"iam:%@", _inputNameField.text];
    NSLog (@"name: %@", self.inputNameField.text);
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    [outputStream write:[data bytes] maxLength:[data length]];
    [self.view bringSubviewToFront:_chatView];
}

-(IBAction)sendMessage:(id)sender {
    NSString *response = [NSString stringWithFormat:@"msg:%@", _inputMessageField.text];
    NSLog (@"message: %@", self.inputMessageField.text);
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    [outputStream write:[data bytes] maxLength:[data length]];

}
    
@end
