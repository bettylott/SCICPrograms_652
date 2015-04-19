//
//  JoinChatViewController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/18/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>

NSInputStream *inputStream;
NSOutputStream *outputStream;

@interface JoinChatViewController : UIViewController<NSStreamDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *inputNameField;
@property (strong, nonatomic) IBOutlet UIView *joinView;

- (IBAction)joinChat:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *inputMessageField;


@property (weak, nonatomic) IBOutlet UITableView *tView;

- (IBAction)sendMessage:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *chatView;

@property (strong, nonatomic)NSMutableArray *messages;

@end
