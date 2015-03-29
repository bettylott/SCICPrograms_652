//
//  Program.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/26/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Program : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;

@end
