//
//  AddNoteTableViewController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/14/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CloudKit/CloudKit.h>

@interface AddNoteTableViewController : UITableViewController

- (IBAction)saveButon:(id)sender;

- (IBAction)cancelButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *noteTextField;

@end
