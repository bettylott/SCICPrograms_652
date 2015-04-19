//
//  SocketSvc.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/17/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "SocketSvc.h"

@implementation SocketSvc

/*
NSInputStream *inputStream;
NSOutputStream *outputStream;

-(void) connect {
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef) @"localhost", 8080, &readStream, &writeStream);
    //Socket socket = newSocket ("www.regisscis.net", 8080);
    inputStream = (__bridge NSInputStream*)readStream;
    outputStream = (__bridge NSOutputStream*)writeStream;
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [inputStream open];
    [outputStream open];
}

-(void) send:(NSString*) msg{
    
    NSData *data = [[NSData alloc] initWithData:[msg dataUsingEncoding:NSASCIIStringEncoding]];
    [outputStream write:[data bytes] maxLength:[data length]];
    
}

-(NSString *) retrieve {
    NSString *msg;
    
    uint8_t buffer[1024];
    int len=0;
    while ([inputStream hasBytesAvailable]){
        len=[inputStream read:buffer maxLength:sizeof(buffer)];
        if(len>0){
            NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
            if(output != nil){
                //aggregate recieved msg strings
            }
        }
    }
    
    return msg;
}

-(void) disconnect {
    [inputStream close];
    [outputStream close];
    [inputStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [inputStream setDelegate:nil];
    [outputStream setDelegate:nil];
    inputStream = nil;
    outputStream = nil;
    
}
 */

@end
