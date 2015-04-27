//
//  SocketRocketViewController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/21/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocketRocketViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *msgTextField;
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
@property (weak, nonatomic) IBOutlet UILabel *msgToSend;
@property (weak, nonatomic) IBOutlet UITextField *msgToSendTextField;
- (IBAction)sendMsgButton:(id)sender;


@end
