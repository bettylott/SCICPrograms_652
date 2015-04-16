//
//  CloudTableViewController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/13/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CloudKit/CloudKit.h>

@interface CloudTableViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray *notes;

@end
