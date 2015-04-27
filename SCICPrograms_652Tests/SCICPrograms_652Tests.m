//
//  SCICPrograms_652Tests.m
//  SCICPrograms_652Tests
//
//  Created by Lisa Matter on 3/12/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>






@interface SCICPrograms_652Tests : XCTestCase

@end

@implementation SCICPrograms_652Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    {
        NSArray *notes = [[NSArray alloc]init];
        if (notes) {
        }
        
        notes = [[[NSUbiquitousKeyValueStore defaultStore] arrayForKey:@"AVAILABLE_NOTES"] mutableCopy];
        if (!notes) notes = [NSMutableArray array];
        
        NSLog (@"notes = %@", notes);
    }

}

- (void)testWebSocket {
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"localhost", 80, &readStream, &writeStream);
    NSInputStream *inputStream = [[NSInputStream alloc] init];
    NSOutputStream *outputStream = [[NSOutputStream alloc] init];
    inputStream = (__bridge NSInputStream *)readStream;
    outputStream = (__bridge NSOutputStream*)writeStream;
    
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    [inputStream open];
    [outputStream open];

}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
