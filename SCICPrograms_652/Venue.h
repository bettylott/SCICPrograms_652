//
//  Venue.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/29/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Location;

@interface Venue : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) Location *location;

@end
