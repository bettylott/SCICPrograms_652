//
//  SocialViewController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/4/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "SocialViewController.h"
#import <Social/Social.h>

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)facebookPost:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *view = [SLComposeViewController
                                         composeViewControllerForServiceType:SLServiceTypeFacebook]; [self presentViewController:view animated:YES completion:nil];
    } else {
        // display an alert to the user
    }
}

- (IBAction)twitterPost:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
    SLComposeViewController *view = [SLComposeViewController
                                     composeViewControllerForServiceType:SLServiceTypeTwitter]; [self presentViewController:view animated:YES completion:nil];
    } else {
        // display an alert to the user
    }
}
@end
