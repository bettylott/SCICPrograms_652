//
//  ProgramTableController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/13/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgramTableController : UITableViewController<NSURLConnectionDelegate, NSXMLParserDelegate>

@property (strong, nonatomic) NSArray *allPrograms;
@property (strong, nonatomic) NSString *program;
@property (strong, nonatomic) NSString *programID;
@property (strong, nonatomic) NSString *dataString;
@property (strong, nonatomic) NSData *programData;

@end
