//
//  SocketRocketViewController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/21/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "SocketRocketViewController.h"
#import <SocketRocket/SRWebSocket.h>
#import "SRWebSocket.h"

@interface SocketRocketViewController () <SRWebSocketDelegate>

@end

@implementation SocketRocketViewController

SRWebSocket *_webSocket;

-(void)createConnection
{
    [self disconnect];
    
    _webSocket = [[SRWebSocket alloc] initWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"ws://www.regisscis.net:80/WebSocketServer/chat"]]];
    _webSocket.delegate = self;
    
    self.title = @"Opening socket connection...";
    [_webSocket open];
}

-(void)sendMessage:(NSString *)message {
    [_webSocket send:message];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createConnection];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Socket Rocket Methods

-(void)webSocketDidOpen:(SRWebSocket *)webSocket;
{
    NSLog (@"WebSocket CONNECTED");
    self.title = @"Connected!";
}

-(void)webSocket:(SRWebSocket *)webSocket didFailWithError:(NSError *)error;
{
    NSLog(@"WebSocket failed with error: %@", error);
    self.title = @"Connection FAILED";
    [self disconnect];
    webSocket = nil;
}


-(void)webSocket:(SRWebSocket *)webSocket didReceiveMessage:(id)message;
{
    NSLog(@"Received Msg: %@", message);

    NSString *msg = (NSString*)message;
    //to do display the message to the user
    
    [self.msgTextField setText:msg];
}

-(void)webSocket:(SRWebSocket *)webSocket didCloseWithCode:(NSInteger)code reason:(NSString *)reason wasClean:(BOOL)wasClean;
{
    NSLog(@"WebSocket was closed");
    self.title = @"Connection closed";
    webSocket= nil;
}

-(void)disconnect{
    [_webSocket close];
    _webSocket=nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sendMsgButton:(id)sender {
    NSString *msg = _msgToSendTextField.text;
    [self sendMessage:msg];
    
}
@end
