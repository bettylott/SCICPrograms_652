//
//  CourseTableController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 3/13/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "CourseTableController.h"

#import "DetailsViewController.h"





@interface CourseTableController ()



@end

@implementation CourseTableController

NSArray *courses = nil;

NSString *programName = nil;

NSString *courseName = nil;

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self getCourses];
   
}

-(void) getCourses {
    
    
    NSLog (@"destination program name: %@", self.selectedProgramName);
    
   if ([self.selectedProgramName  isEqual: @"CIS"]){
       
       NSString *CIS206 = @"206 Business Software Applications";
       
       NSString *CIS300 = @"300 Foundation Information Systems";
       
       NSString *CIS313 = @"313 Intro to Database Concepts";
       
       NSString *CIS318 = @"318 Ethics for IT Professional";
       
       NSString *CIS325 = @"325 Systems Analysis and Design";
       
       NSString *CIS445 = @"445 Database Management";
       
       NSString *CIS448 = @"448 IT Project Management";
       
       NSString *CIS458 = @"458 Business Process Management";
       
       NSString *CIS463 = @"463 E-Commerce Technology Management";
       
       NSString *CIS480 = @"480 Mng Tech for Bus Strategies";

       
    NSArray *CISCourses = [[NSArray alloc] initWithObjects:CIS206, CIS300, CIS313, CIS318, CIS325, CIS445, CIS448, CIS458, CIS463, CIS480, nil];
        
    courses= CISCourses;
    
    NSLog (@"%@", courses);
    }
    
    if ([self.selectedProgramName  isEqual: @"CN"]){
        
        NSString *CN311 = @"311 Systems Architecture";
        
        NSString *CN316 = @"316 Networking Infrastructure";
        
        NSString *CN321 = @"321 Broadband and Wireless Fundamentals";
        
        NSString *CN410 = @"410 Voice and Video Networks";
        
        NSString *CN460 = @"460 Fundamentals of E-Security I";
        
        NSString *CN461 = @"461 Fundamentals of E-Secuirty II";
        
        NSString *CN462 = @"462 Ethical Hacking and Defense";
        
        NSString *CN468 = @"468 Management of Enterprise Networks";
        
        NSString *CN493 = @"493 Senior Capstone";
        
        NSArray *CNCourses = [[NSArray alloc] initWithObjects:CN311, CN316, CN321, CN410, CN460, CN461, CN462, CN468, CN493, nil];
        
        courses= CNCourses;
        
        NSLog (@"%@", courses);

    }
    
    if ([self.selectedProgramName  isEqual: @"CS"]){
        
        NSString *CS208 = @"208 Computer Science Fundamentals";
        
        NSString *CS361 = @"361 Control Structures";
        
        NSString *CS362 = @"362 Data Structures";
        
        NSString *CS370 = @"370 Assembly Language";
        
        NSString *CS372 = @"372 Adv Programming and Algorithms";
        
        NSString *CS375 = @"375 Computational Theory";
        
        NSString *CS390 = @"390 Prin Programming Languages";
        
        NSString *CS430 = @"430 Operating Systems";
        
        NSString *CS432 = @"432 Modern Software Engineering";
        
        NSString *CS434 = @"434 OO Programing Using Java";
        
        NSString *CS440 = @"440 Comp Organization/Architecture";
        
        NSString *CS445 = @"445 Database Management";
        
        NSString *CS450 = @"450 Data Networks";
        
        NSString *CS465 = @"465 UNIX Operating Systems";
        
        NSString *CS493 = @"493 Senior Capstone";
        
        NSArray *MSCCCourses = [[NSArray alloc] initWithObjects:CS208, CS361, CS362, CS370, CS372, CS375, CS390, CS430, CS432, CS434, CS440, CS445, CS450, CS465, CS493, nil];
        
        courses= MSCCCourses;
        
        NSLog (@"%@", courses);
    
    
}
    
    if ([self.selectedProgramName  isEqual: @"MSCC"]){
        
        NSString *MSCC610 = @"610 Info Technology Concepts";
        
        NSString *MSCC630 = @"630 Enterprise Architecture";
        
        NSString *MSCC693 = @"693 Graduate Capstone";
        
        NSString *MSCC697 = @"697 Info Technology Research Methods";
        
        NSString *MSCC698 = @"698 Graduate Thesis";
        
        NSArray *MSCCCourses = [[NSArray alloc] initWithObjects:MSCC610, MSCC630, MSCC693, MSCC697, MSCC698, nil];
        
        courses= MSCCCourses;
        
        NSLog (@"%@", courses);
        
        // MCT, MSCD, MSCI, MSCT, MSIA, MSSE
    }
    
    if ([self.selectedProgramName  isEqual: @"MCT"]){
        
        NSString *MCT609 = @"609 Fundamentals of Programming";
        
        NSString *MCT610 = @"610 Software Engineering";
        
        NSString *MCT611 = @"611 Cmptr Arch and Operating Systems";
        
        NSString *MCT613 = @"613 Database Architecture";
        
        NSString *MCT614 = @"614 Database Concepts";
        
        NSString *MCT615 = @"615 Oracle Database Adminstration";
        
        NSString *MCT616 = @"616 Middleware Arch Database Apps";
        
        NSString *MCT618 = @"618 Object Oriented Design";
        
        NSString *MCT619 = @"619 Object Oriented Programming";
        
        NSString *MCT620 = @"620 Distributed Systems";
        
        NSString *MCT621 = @"621 Artificial Intelligence";
        
        NSString *MCT622 = @"622 Real-Time Systems";
        
        NSString *MCT626 = @"626 Thesis";
        
        NSString *MCT627 = @"627 Database Technologies and SOA";
        
        NSString *MCT696 = @"696 Database Practicum II";
        
        
        NSArray *MCTCourses = [[NSArray alloc] initWithObjects:MCT609, MCT610, MCT611, MCT613, MCT614, MCT615, MCT616, MCT616, MCT618, MCT619, MCT620, MCT621, MCT622, MCT626, MCT627, MCT696, nil];
        
        courses= MCTCourses;
        
        NSLog (@"%@", courses);
    
}
    
    if ([self.selectedProgramName isEqual:@"MSCD"])
    {
        NSString *MSCD600 = @"600 Datase Architecture";
        
        NSString *MSCD610 = @"610 Database Concepts";
        
        NSString *MSCD640 = @"640 Oracle Database Administration";
        
        NSString *MSCD642 = @"642 Database Backup and Recovery";
        
        NSString *MSCD650 = @"PL/SQL Programmming";
        
        NSString *MSCD661 = @"661 Business Intelligence";
        
        NSString *MSCD664 = @"664 Intro to NoSQL Databases";
        
        NSString *MSCD670 = @"670 Middleware Arch/Dtbse Apps";
        
        NSString *MSCD675 = @"675 Database Technologies and SOA";
        
        NSString *MSCD681 = @"681 Data Warehouse Designs";
        
        NSString *MSCD696 = @"696 Database Practicum II";
        
        
        NSArray *MSCDCourses = [[NSArray alloc] initWithObjects:MSCD600, MSCD610, MSCD640, MSCD642, MSCD650, MSCD661, MSCD664, MSCD670, MSCD675, MSCD681, MSCD696, nil];
        
        courses= MSCDCourses;
        
        NSLog (@"%@", courses);
        }
    
    if ([self.selectedProgramName isEqual:@"MSCI"])
    {
        NSString *MSCI600 = @"600 Strategic Information Tech";
        
        NSString *MSCI610 = @"610 Ethics in Information Tech";
        
        NSString *MSCI615 = @"615 Bus Process Engineering";
        
        NSString *MSCI625 = @"625 Supply Chain Management";
        
        NSString *MSCI630 = @"630 Knowledge Management";
        
        NSString *MSCI660 = @"660 Global E-Business";
        
        NSString *MSCI680 = @"680 Info Tech Project Management";
        
        NSString *MSCI681 = @"681 Enterprise Project Systems";
        
        NSString *MSCI685 = @"685 Emerging Technologies";
        
        NSArray *MSCICourses = [[NSArray alloc] initWithObjects:MSCI600, MSCI610, MSCI615, MSCI625, MSCI630, MSCI660, MSCI680, MSCI681, MSCI685, nil];
        
        courses= MSCICourses;
        
        NSLog (@"%@", courses);
    }

    if ([self.selectedProgramName isEqual:@"MSCT"])
    {
        NSString *MSCT600 = @"600 Network Essentials";
        
        NSString *MSCT620 = @"620 Access Networks";
        
        NSString *MSCT650 = @"650 High Availibility DR Systems";
        
        NSString *MSCT662 = @"Storage Area Networks";
        
        NSString *MSCT680 = @"680 Enterprise Storage";
        
        NSString *MSCT692 = @"692 System Engineer Practicum I";
    
        NSString *MSCT696 = @"696 Syst Engineer Practicum II";
        
        NSArray *MSCTCourses = [[NSArray alloc] initWithObjects:MSCT600, MSCT620, MSCT650, MSCT662, MSCT680, MSCT692, MSCT696, nil];
        
        courses= MSCTCourses;
        
        NSLog (@"%@", courses);
    }

    if ([self.selectedProgramName isEqual:@"MSIA"])
    {
        NSString *MSIA670 = @"670 Enterprise Info Assurance";
        
        NSString *MSIA672 = @"672 Managing a Secure Enterprise";
        
        NSString *MSIA674 = @"674 Plng/Impl Arch Security";
        
        NSString *MSIA676 = @"676 Sys, Apps, Data";
        
        NSString *MSIA678 = @"678 Risk Management";
        
        NSString *MSIA682 = @"681 Network Forensics";
        
        NSString *MSIA683 = @"683 Advanced Forensics";
        
        NSString *MSIA692 = @"692 Info Assurance Practicum I";
        
        NSString *MSIA696 = @"696 Info Assurance Practicum II";
        
        NSArray *MSIACourses = [[NSArray alloc] initWithObjects: MSIA670, MSIA672, MSIA674, MSIA676, MSIA678, MSIA682, MSIA683, MSIA692, MSIA696, nil];
        
        courses= MSIACourses;
        
        NSLog (@"%@", courses);
    }

    if ([self.selectedProgramName isEqual:@"MSSE"])
    {
        NSString *MSSE600 = @"600 Object Oriented Software Eng";
        
        NSString *MSSE610 = @"610 Software Req and Process";
        
        NSString *MSSE640 = @"640 Software Quality and Test";
        
        NSString *MSSE642 = @"642 Software Assurance";
        
        NSString *MSSE650 = @"650 iOS Software Development";
        
        NSString *MSSE652 = @"652 Enterprise iOS Sofware Dev";
        
        NSString *MSSE655 = @"655 Android Software Development";
        
        NSString *MSSE657 = @"657 Enterprise Android Software Dev";
        
        NSString *MSSE670 = @"670 Java Software Development";
        
        NSString *MSSE672 = @"672 Adv Java Software Dev";
        
        NSString *MSSE674 = @"674 Enterprise Java Software Dev";
        
        NSString *MSSE676 = @"676 Adv Enterprise Java Software Dev";
        
        NSString *MSSE680 = @"680 C# Software Development";
        
        NSString *MSSE682 = @"682 Enterpise C# Software Dev";
        
        NSString *MSSE696 = @"696 Sftwr Engineer Practicum II";
        
        NSArray *MSSECourses = [[NSArray alloc] initWithObjects: MSSE600, MSSE610, MSSE640, MSSE642, MSSE650, MSSE652, MSSE655, MSSE657, MSSE670, MSSE672, MSSE674, MSSE676, MSSE680, MSSE682, MSSE696, nil];

        courses= MSSECourses;
        
        NSLog (@"%@", courses);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    NSLog(@"Courses Count = %li", courses.count);
    return courses.count;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseCell" forIndexPath:indexPath];
    
    
    
    NSString *course = [courses objectAtIndex:[indexPath row]];
    
    [cell.textLabel setText: course];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = selectedCell.textLabel.text;
    self.courseName = cellText;
    NSLog(@"selected cell text = %@", cellText);
    
    [self performSegueWithIdentifier:@"courseDetail" sender:self];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"courseDetail"]) {
        NSLog(@"Course Name before segue: %@", self.courseName);
        
       DetailsViewController *dvc = (DetailsViewController*)segue.destinationViewController;
        dvc.selectedCourse = self.courseName;
    }
}


@end
