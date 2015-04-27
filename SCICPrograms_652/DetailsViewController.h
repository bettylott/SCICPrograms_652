//
//  DetailsViewController.h
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/24/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController

@property NSString *selectedCourse;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextBox;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *creditsLabel;

@property (weak, nonatomic) IBOutlet UITextView *offeringsLabel;

@end
