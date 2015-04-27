//
//  DetailsViewController.m
//  SCICPrograms_652
//
//  Created by Lisa Matter on 4/24/15.
//  Copyright (c) 2015 MSSE 652. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self getDetails];
    // Do any additional setup after loading the view.
}

-(void) getDetails {
    
    //CIS Courses
    NSLog (@"course name: %@", self.selectedCourse);
    
    if ([self.selectedCourse  isEqual: @"206 Business Software Applications"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Business Software Applications"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces software typically used in business or professional environments. Emphasizes the application of software tools to business needs.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
    }
    
    if ([self.selectedCourse  isEqual: @"300 Foundation Information Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Foundation Information Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces to contemporary information systems concepts. Focuses on business processes, software, hardware, data and communication technologies, and how these components can be integrated and managed to create business competitive advantage. Hand-on experience with SAP ERP software.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"313 Intro to Database Concepts"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Introduction to Database Concepts"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces database concepts and technology. Enables the student to become a knowledgeable end-user of database management systems and to appreciate the roles of database designers, managers, and administrators. Provides an understanding of the usage of databases in the information system of an organization. Topics include entity-relationship models, logical and physical database designs, queries, SQL, transaction processing, concurrency control, recovery techniques, and emerging trends in database systems.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"318 Ethics for IT Professional"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Ethics for IT Professional"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on ethical problems that arise in the Information Technology world. Explores the areas of IT crime, privacy, intellectual property, software development, and employer/employee issues. Introduces the codes of ethics for various IT professional associations and organizations.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"325 Systems Analysis andv Design"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Systems Analysis and Design"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Studies the analysis and design of computer based information systems. Considers transformation processes and comprehensive design. Includes advanced technology, emphasizing expert and knowledge-based systems. Considers human resources, communications and computers in a systems framework.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"445 Database Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces core concepts in data management. Students indentify organizational information requirements, convert conceptual data models into relational data models, apply normalization techniques, and utilize an Oracle relational database management system in a virtual lab environment.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"448 IT Project Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"IT Project Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces management of Information Technology projects, including management of personnel resources and materials resources. Techniques for establishing goals and realistic timelines for delivery of an Information Technology project are also implemented.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
        
    }

    
    if ([self.selectedCourse  isEqual: @"458 Business Process Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Business Process Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces key concepts and approaches to business process management and improvement. Examines how to identify, document, model, assess, and improve core business processes. Hands-on experience with SAP ERP software. Prerequisite(s): CIS 300 and CIS 325";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"463 E-Commerce Technology Mnmt"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"E-Commerce Technology Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces concepts of electronic commerce and technologies employed. Covers catalysts for e-commerce (B2B and B2C), the convergence of technological challenges, legal and regulatory frameworks, behavior and educational challenges, organization and business barriers, and strategies for e-commerce.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }

    
    
    if ([self.selectedCourse  isEqual: @"480 Mng Tech for Bus Strategies"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Managing Tech Business Strategies"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides executive perspective on management information systems, systems analysis and database management. Develops an understanding of strategic issues underlying information systems technical issues in developing systems. Covers strategic issues related to critical business success factors. Includes information's role in competition, industry leadership, and business planning. Covers alternative development methods and addresses issues of databases, projected management, and functional management.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015; Summer 8W1, 2015, Summer 8W2, 2015";
        
    }

    
    //CN Courses
    
    if ([self.selectedCourse  isEqual: @"311 Systems Architecture"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Systems Architecture"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Presents design, management and administration of simple to complex network topologies. Intro to Internet connectivity and protocols supporting networked applications over a distributed network and their relationship with end-users. Introduces the concepts of user content, applications, services, and infrastructure.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"316 Networking Infrastructure"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Networking Infrastructure"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Investigates the foundations of network infrastructures and emerging network technologies. Covers OSI model in depth, including TCP/IP. Investigates the standards, design, architecture, and operation of LAN, WAN and telecommunications services. Introduces basic switching & routing concepts.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"321 Broadband and Wireless Fndmntls"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Broadband Wireless Fundamentals"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Presents Wide Area Network (WAN) interconnection technologies, including Internet Service Provider (ISP) and wireless carrier services. Covers telecomminications link engineering considerations and methodologies. Investigates wireless communications technology and infrastructure in wireless LAN and cellular architectures.";
        _creditsLabel.text = @"3";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"410 Voice and Video Networks"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Voice and Video Networks"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduction to streaming media protocols and their implementation. Coverage, includes VoIP, SIP, RTP QoS, Security, Unified Communication and the regulation of media content (voice, music, TV, videos) currently and historically.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"461 Fundamentals of E-Security II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Fundamentals E-Security II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"A continuation of CN460. Uses an integrated study of network security, cryptography, operational security, disaster recovery, business continuity planning, and information security legal issues to round out the essential e-security foundation.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
    }
    
    if ([self.selectedCourse  isEqual: @"460 Fundamentals of E-Security I"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Fundamentals E-Security I"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the concept of security management and addresses the ambient factors that constitute a sound organizational security policy. Examines basic security management, security models, risk analysis, internal and external security threats, privacy issues and security laws and regulations in an effort to provide a solid foundations for future e-security courses.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
    }


    if ([self.selectedCourse  isEqual: @"462 Ethical Hacking and Defense"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Ethical Hacking and Defense"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores security threats and vulnerabilities that face computer network engineers by using penetration testing techniques. Examines requirements for a formal hacking lab and discusses ethical boundaries between white and black hat hacking.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"468 Management of Enterprise Ntwrks"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Ethical Hacking and Defense"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores datacenter support and management requiring the integration of servers, applications and data storage with business operations and goals. Examines the impact of recent ethical, governance and legal concerns on business operations.";
        _offeringsLabel.text = @"not available";
    }
    
    if ([self.selectedCourse  isEqual: @"493 Senior Capstone"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Senior Capstone"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the culminating experience of the major, focusing on integration and application of theory. Must be completed as graded course work at Regis University.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }

    //CS Courses
    if ([self.selectedCourse  isEqual: @"208 Computer Science Fundamentals"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Computer Science Fndmtls"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides an introduction to Computer Science/Computer Information Systems. Includes numbering systems, mathematical and logical binary operations, basic concepts of computer organization, and operating systems. Introduces systems analysis and design, management information systems, databases, networking, assembly and high-level language program development environments.";
        _offeringsLabel.text = @"Spring 8W1, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"361 Control Structures"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Control Structures"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Develops a precise and logical methodology for problem solving and reducing solutions to algorithmic format. Introduces the concepts and methodologies of structured programming and design. Demonstrates the uses, abuses, and best practices of sequential, selection, iterative, recursive, and subprogram control structures. NOTE: Credit may be awarded for CS 241 or CS 361, not both.";
        _offeringsLabel.text = @"Spring 8W1, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"362 Data Structures"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Data Structures"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Combines concepts discussed in CS 361, computer programming and design, with structural programming and design. Examines data structures including arrays, structures, linked lists, queues, stacks, file organization along with file processing and algorithms used in problem solving. Emphasizes sound programming practices. NOTE: Credit may be awarded for CS 362 or CS 341, not both";
        _offeringsLabel.text = @"Spring 8W1, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"370 Assembly Language"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Assembly Language"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Combines concepts discussed in CS 361, computer programming and design, with structural programming and design. Examines data structures including arrays, structures, linked lists, queues, stacks, file organization along with file processing and algorithms used in problem solving. Emphasizes sound programming practices. NOTE: Credit may be awarded for CS 362 or CS 341, not both";
        _offeringsLabel.text = @"Summer, 2015, Summer 8W1";
        
    }

    
    if ([self.selectedCourse  isEqual: @"372 Adv Programming and Algorithms"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Advanced Programming and Algthms"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Demonstrates methods for analyzing the efficiency of computer algorithms. Analyzes searching and sorting algorithms, including hashing, shell sort, quicksort, and mergesort. Develops advanced programming skills through enhanced program analysis and design, team programming, and design and implementation of large projects.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W1, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"375 Computational Theory"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Computational Theory"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Studies the various computational forms including Automata, Lambda Calculus, Tuning Machines, Recursive Functions and emgerging theories. Explores the association of formal language and computation. Introduces NP and NP Complete problems and limits on computation.";
        _offeringsLabel.text = @"Summer 8W1 , 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"390 Prin Programming Languages"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Principle Programming Languages"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the constructs upon which contemporary programming languages are based. Students investigate programs written in declarative and imperative programming languages including functional, logic, structured, and object-based approaches. Prerequisite(s): CS 362 and MT 320, or permission of instructor.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"430 Operating Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Operating Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Studies the organization and operation of computer systems. Includes batch processing, interactive processing, multiprogramming systems, storage management, data sharing in main storage, resource control, file systems and processor scheduling. Prerequisite(s): CS 362";
        _offeringsLabel.text = @"Summer 8W1 , 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"432 Modern Software Engineering"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Modern Software Engineering"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the constructs upon which contemporary programming languages are based. Students investigate programs written in declarative and imperative programming languages including functional, logic, structured, and object-based approaches. Prerequisite(s): CS 362 and MT 320, or permission of instructor.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W1 , 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"434 OO Programing Using Java"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Object Oriented Programing Using Java"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the Java programming language and application of object-oriented programming principles to the solution of contemporary software engineering problems, including Graphical User interfaces, Design Patterns, and Platform-Based Development (tablets, smart phones, and servers).";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"440 Comp Organization/Architecture"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Computer Organization/Architecture"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces machine architecture through the traditional Von Neumann architectural schemes. Features traditional register-to-register transfer logic, ALU design and BUS architectures. Examines disk drive performance analysis, virtual storage, cache memory, pipelining, micro-code and bit-slicing. Examines several systolic architectures and their corresponding parallel processing environments.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"445 Database Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the theory of database design. Discusses techniques of database systems implementation, physical file organization, data integrity, security techniques, and management of the database environment. Explores data structures used in databases, database management, and data communications.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"450 Data Networks"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Data Networks"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the concepts and terminology of data communications and network design. Includes transmission techniques, network topologies, protocols, security network control and network architectures.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"465 UNIX Operating Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"UNIX Operating Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores the architecture of the UNIX operating system. Provides hands-on experience in file management, the UNIX shell, using filters, using and developing pipes, security, software development tools, text processing tools and in-depth knowledge of how these aspects are incorporated into the UNIX system. Discusses how UNIX meets its design objectives, its relative merits in comparison with other operating systems, and interoperability issues.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"493 Senior Capstone"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Senior Capstone"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the culminating experience of the major, focusing on integration and application of theory. Must be completed as graded course work at Regis University.";
        _offeringsLabel.text = @"Spring 8W2 , 2015, Summer 8W1, 2015";
        
    }
    
    //MSCC Courses*****************************
    
    if ([self.selectedCourse  isEqual: @"610 Info Technology Concepts"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Information Technology Concepts"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces information systems concepts, architectures, and technologies. Emphasizes information systems resources needed to meet organizational mission and objectives. Focuses on information systems from business viewpoint including processes, value proposition, and different types of information systems.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"630 Enterprise Architecture"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Architecture"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines information needed to create adaptive strategies for successfully implementing enterprise architectures. Focuses on strategies that are based on experiences within organizations across multiple industry verticals.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"693 Graduate Capstone"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Graduate Capstone"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Case-based scenario that emphasizes real-world application of Information Technology knowledge and skills. Simulates a real-world information technology organization where students enhance skills learned in previous courses. Employing critical analysis, students fulfill the final project requirement.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"697 Info Technology Rsch Methods"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Information Technology Research Methods"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Concentrates on project management, proposal preparation, research and thesis writing. Deliverable include abstract proposal outline and research plan. Students research and develop project proposals that are then approved by the faculty.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"698 Graduate Thesis"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Graduate Thesis"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Students complete a masters thesis that is a substantial body of original scholarly work in the area of information technology.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    //MCT Courses ***********************************
    
    if ([self.selectedCourse  isEqual: @"609 Fundamentals of Programming"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Fundamentals of Programming"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Foundational programming module suitable for students with no previous experience of programming and those with moderate previous knowledge. Provides a foundation in key concepts of functional programming, as well as an appreciation of object-oriented programming.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"610 Software Engineering"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Software Engineering"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces comprehensive concepts of software engineering including structured software analysis, design and management techniques, systems development lifecycle (SDLC), structured systems analysis and design techniques, Computer Aided software Engineering (CASE) tools, and software project management.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"611 Cmptr Arch and Operating Sys"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Computer Architecture and Operating Sys"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"XXX";
        _offeringsLabel.text = @"Summer 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"613 Database Architecture"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Architecture"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides an introduction to the internal structures and architectures of database management systems. Focuses on the Oracle10g ORDBMS architecture and associated processes and physical files. Covers general concepts such as design, deployment, and operation. NOTE: Acceptance into the MS program.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015. Summer 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"614 Database Concepts"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Concepts"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores data modeling, database design, management concepts, and SQL3 in-depth. Utilizes Oracle10g ORDBMS and Oracle command line interface, SQL*Plus for all lab work. Provides hands-on experience with an enterprise class, object-relational database management system.";
        _offeringsLabel.text = @"Spring 8W2, 2015. Summer 8W1, 2015, Summer 8W2, 2015";
    
}
    
    if ([self.selectedCourse  isEqual: @"615 Oracle Database Adminstration"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Oracle Database Adminstration"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines key tasks and functions required of a database administrator in a production environment. Students create, start up, and manage a database. In addition, students implement data security and integrity measures and grant access privileges to individual database users.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"616 Middleware Arch Database Apps"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Middleware Arch Database Apps"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines middleware implementation of portals using Oracle's advanced 10gAS platform as an application study. Focuses on middleware design, development and administration of web- based enterprise portal technology. Explores B2B applications, case studies, and Internet access to the database.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"618 Object Oriented Design"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Object Oriented Design"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces object oriented analysis and design techniques and industry standard notation UML (Unified Modeling Language). Students develop analysis and design models using CASE tools tracking systems from inception through analysis, solution design, and technical implementation.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"619 Object Oriented Programming"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Object Oriented Programming"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores object modeling, class definition, inheritance, composition, encapsulation, polymorphism, abstract classes, and interfaces. Focuses on the Java programming language emphasizing applets, graphics, data storage, multi-threaded programming, and exception handling.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"620 Distributed Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Distributed Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Investigates design and implementation of internet based distributed applications including APIs, frameworks, standard internet protocol stack, client/server architectures, network programming, Java, I/O, multithreaded programming, Sockets, thin client/web server support, Servlets, JSP, EJBs and web services.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"621 Artificial Intelligence"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Artificial Intelligence"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the concepts and techniques of Artificial Intelligence (AI) including use of the Prolog language, knowledge representation, machine learning, expert systems, uncertainty, neural networks, and real world application of AI techniques.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"622 Real-Time Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Real-Time Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"XXX";
        _offeringsLabel.text = @"Sumemr 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"626 Thesis"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Thesis"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Assists students in their thesis statement, to explore various research methods, to create a project plan, and to begin their secondary research.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"627 Database Technologies and SOA"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Technologies and SOA"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces SOA, middleware, with enterprise architecture, interoperability and loose coupling. Explores technical and organizational perspectives and alignment using design principles and industry-standard organizational models. Includes hands-on implementation of distributed Web Services-based interfaces to database system.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"696 Database Practicum II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Practicum II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continuation of Database Practicum I. Simulates a real-world information technology organization where students enhance skills learned in previous database courses. Provides a research platform that can be used towards the collection of data to fulfill the thesis requirement.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }

    //MSCD courses ********************************
    
    if ([self.selectedCourse  isEqual: @"600 Datase Architecture"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Datase Architecture"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides an introduction to the internal structures and architectures of database management systems. Focuses on the Oracle10g ORDBMS architecture and associated processes and physical files. Covers general concepts such as design, deployment, and operation. NOTE: Acceptance into the MS program.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"610 Database Concepts"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Concepts"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores data modeling, database design, management concepts, and SQL3 in-depth. Utilizes Oracle10g ORDBMS and Oracle command line interface, SQL*Plus for all lab work. Provides hands-on experience with an enterprise class, object-relational database management system.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"640 Oracle Database Administration"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Oracle Database Administration"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines key tasks and functions required of a database administrator in a production environment. Students create, start up, and manage a database. In addition, students implement data security and integrity measures and grant access privileges to individual database users.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"642 Database Backup and Recovery"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Oracle Database Administration"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Studies the critical tasks of planning and implementing database backup and recovery strategies. Explores backup methodologies based on business requirements in a typical enterprise and utilizes multiple strategies to recover from different types of recovery failures.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"PL/SQL Programmming"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"PL/SQL Programmming"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Studies advanced SQL and SQL*Plus concepts and how to write PL/SQL procedures, functions and packages. Topics include extending statements to include Set Operators, and building correlated sub queries and hierarchical queries. Student creates and manages PL/SQL program units and database triggers as a basis for complex application development.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"661 Business Intelligence"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Business Intelligence"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Architectures, theories, methodologies and technologies that transform structured, semi-structured and unstructured data into meaningful and useful information. Covers analysis of enterprise data requirements to develop queries, reports and building OLAP cubes that use business analytics to answer complex business questions.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"664 Intro to NoSQL Databases"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Intro to NoSQL Databases"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"XXX";
        _offeringsLabel.text = @"Summer 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"670 Middleware Arch/Dtbse Apps"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Middleware Arch/Dtbse Apps"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines middleware implementation of portals using Oracle's advanced 10gAS platform as an application study. Focuses on middleware design, development and administration of web- based enterprise portal technology. Explores B2B applications, case studies, and Internet access to the database.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }

    
    if ([self.selectedCourse  isEqual: @"675 Database Technologies and SOA"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Technologies and SOA"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces SOA, middleware, with enterprise architecture, interoperability and loose coupling. Explores technical and organizational perspectives and alignment using design principles and industry-standard organizational models. Includes hands-on implementation of distributed Web Services-based interfaces to database system.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }

    
    if ([self.selectedCourse  isEqual: @"681 Data Warehouse Designs"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Data Warehouse Designs"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Data warehouse design includes in-depth exploration of organizational decision based on data repository, focusing on requirements, data warehouse design, data extraction and data stores. Includes business intelligence systems implications with hands-on approach to design.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"696 Database Practicum II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Database Practicum II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continuation of Database Practicum I. Simulates a real-world information technology organization where students enhance skills learned in previous database courses. Provides a research platform that can be used towards the collection of data to fulfill the thesis requirement.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    //MSCI courses ******************************************
    
    if ([self.selectedCourse  isEqual: @"600 Strategic Information Tech"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Strategic Information Tech"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Presents the importance of information technology as necessary component of a successful business. Focuses on the evolution of information technology from an enabling tool to a competitive business strategy. Illuminates roles of CIO.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"610 Ethics in Information Tech"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Ethics in Information Tech"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Course illuminates ethical issues regarding information systems (access, data storage, and data utilization). Focuses on developing a set of ethical standards for professionals in information technology.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"615 Bus Process Engineering"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Bus Process Engineering"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on the strategic and organizational issues of process management and the use of Enterprise Resource Planning systems (ERPs). Topics include major strategic approaches used to understand, analyze and implement efficient business processes, workflow modeling techniques, process modeling techniques and procedure models. Employs SAP R/3 Enterprise Application Software to examine the issues encountered in a typical business organization.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"625 Supply Chain Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Supply Chain Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on supply chain management from order through delivery, encompassing the interactions of suppliers and customers in a systematic process while utilizing the SAP platform to illustrate concepts and facilitate hands-on learning for students.";
        _offeringsLabel.text = @"Summer 8W2, 2015, Summer 8W1, 2015";
        
    }

    
    if ([self.selectedCourse  isEqual: @"630 Knowledge Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Knowledge Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Presents detailed insights into knowledge management focusing on concepts, theories and technologies that provide the foundation for knowledge management and on information technology as an important catalyst.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"660 Global E-Business"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Global E-Business"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Surveys challenges facing business and IT professionals in an increasingly global, technological environment placing emphasis on infrastructure, integration, technology, cultural, organizational, sociopolitical issues, and appreciation of how types of IS will influence international business practices.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"680 Info Tech Project Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Info Tech Project Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Investigates prevalent PM approaches (e.g. Traditional, Agile/Scrum) applicability and how blended best practices support project success. Analyzes project case failures to determine how to avoid failure and improve business outcomes. Covers PMO value-add.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"681 Enterprise Project Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Project Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on the total Program Management lifecycle. Introduces skills required to define, configure, plan and track different types of projects. Topics include overview of project management and fundamentals; SAP project system; project structures, planning and execution; logistics, accounting and human resources interfaces; budgeting; period end closing and reporting. Microsoft Project will be used to illustrate and execute Enterprise Project Management.";
        _offeringsLabel.text = @"Summer 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"685 Emerging Technologies"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Emerging Technologies"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Applies innovative technology adoption processes to evaluate emerging technologies and their business value impact. Evaluate cases to discern best practices and develop best adoption processes.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }

    
    //MSCT courses **************************************
    
    if ([self.selectedCourse  isEqual: @"600 Network Essentials"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Network Essentials"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides an overview of local area networks, telephony, web basics, wide area networking, etc. Introduces concepts central to network design, architectures, standards and protocols.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"620 Access Networks"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Access Networks"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Emphasizes the application of networking architectures for transport of enterprise data. Topics include network media, communications and protocols, architectures, operating systems, administration and support issues, distributed network environments and Inter-networking.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2";
        
    }
    
    if ([self.selectedCourse  isEqual: @"650 High Availibility DR Systems"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"High Availibility DR Systems"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines high availability and disaster recovery concepts and mechanisms; threats to an organizations information technology and develops architectures, policies, and plans to address them. Specific high availability technology options for disater recovery are examined.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"Storage Area Networks"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Storage Area Networks"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines storage attached network devices through enterprise level SAN systems. Studies managed data transition and explores storage design in business applications, cost, and systems administration.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"680 Enterprise Storage"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Storage"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the necessary skills to plan, design, manage and support distributed storage systems and devices. Focuses on operating and managing a mixed platform, multi-vendor, interoperable enterprise.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"692 System Engineer Practicum I"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"System Engineer Practicum I"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Students gain additional Systems Engineering experience through operational assignments in support of the Academic Research Network through investigation into research topics and practice with a variety of software and hardware platforms. Note: Instructor consent required";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"696 Syst Engineer Practicum II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Syst Engineer Practicum II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continuation of Systems Engineering Practicum I. Students gain additional Systems Engineering experience through operational assignments in support of the Academic Research Network through investigation into research topics and practice with a variety of software and hardware platforms. Note: Instructor consent required";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    //MSIA Courses **********************************************************
    
    if ([self.selectedCourse  isEqual: @"670 Enterprise Info Assurance"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Info Assurance"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the basic Information Assurance (IA) model; security of the database, the application and the system. Examines current security standards, best practices and auditing practices.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"672 Managing a Secure Enterprise"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Managing a Secure Enterprise"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the knowledge of designing and managing a secure enterprise. Includes aspects of enterprise security, physical security, disaster-recovery planning, and business continuity planning.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"674 Plng/Impl Arch Security"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Plng/Impl Arch Security"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Explores security policy development, implementation and standards compliance and testing on corporate systems, application and data. Examines target architectures: telecommunications and wireless enterprise corporate data network.";
        _offeringsLabel.text = @"Summer 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"676 Sys, Apps, Data"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Sys, Apps, Data"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides the knowledge of building and protecting enterprise infrastructure and proprietary data. Topics include risk analysis, security policies, intrusion detection, damage control and assessment.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }

    if ([self.selectedCourse  isEqual: @"678 Risk Management"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Risk Management"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Prepares students to evaluate an organizations exposure to information technology security threats using rigorous policy and standards based analysis of the existing policy directives and the derived threat matrix.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"681 Network Forensics"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Network Forensics"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines forensic analysis of networks utilizing unique and sophisticated sets of tools, techniques and legal policies. Covers established concepts, methodology and tools to enhance performance of network forensics.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"683 Advanced Forensics"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Advanced Forensics"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continues the examination of forensic analysis of computer systems and devices utilizing appliances, tools, techniques and legal policies. Covers established advanced concepts and techniques to enhance performance of network forensics.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"692 Info Assurance Practicum I"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Info Assurance Practicum I"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Students gain additional Information Assurance experience through operational assignments in support of the Academic Research Network through investigation into research topics and practice with a variety of software and hardware platforms.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }

    
    if ([self.selectedCourse  isEqual: @"696 Info Assurance Practicum II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Info Assurance Practicum II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continuation on Information Assurance PracticumI. Students gain additional information assurance experience through operational assingnments in support of the academic research network through investigation into research topics and practice with a variety of sortware and hardware platforms. Note: instructor consent required.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }

//MSSE Courses *************************************************************************
    
    if ([self.selectedCourse  isEqual: @"600 Object Oriented Software Eng"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Object Oriented Software Eng"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the Software Engineering Body of Knowledge and the Unified Modeling Language used to communicate the design of object-oriented software systems. Presents an Agile software development process that is enabled with the use of a layered software architecture.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"610 Software Req and Process, Summer 8W2, 2015"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Software Req and Process"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Examines acquisition, analysis, specification, validation, and management of software requirements. Explores formal software processes, including the definition, implementation, measurement, management, change, and improvement of the software engineering process.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"640 Software Quality and Test"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Software Quality and Test"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces the software quality assurance process and the means to monitor, control, and evaluate software quality. Presents software testing techniques, tools, and processes. Covers both plan-driven and Agile techniques for software quality and test.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"642 Software Assurance"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Software Quality and Test"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Provides a detailed explanation of software assurances practices, methods, and tools required throughout the software development life-cycle. Applies life-cycle knowledge in exploring common programming errors and evaluates common software testing tools.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"650 iOS Software Development"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"iOS Software Development"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces advanced features of iOS software development including techniques for integrating web services and the use of other API's for app development. Includes development of a distributed software project using XCode and other developmental tools.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"652 Enterprise iOS Sofware Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise iOS Sofware Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces advanced features of iOS software development including techniques for integrating web services and the use of other API's for app development. Includes development of a distributed software project using XCode and other developmental tools.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"655 Android Software Development"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Android Software Development"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces Android software development, using the Java programming language, Android Developer Tools (ADT)and Android Studio for Android mobile devices. Includes software development of a project in preparation for deployment to Android devices.";
        _offeringsLabel.text = @"Summer 8W1, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"657 Enterprise Android Software Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Android Software Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces advanced features of Android software development, including techniques for integrating web services and the use of other API's for app development. Includes development of a distrubuted software project.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"670 Java Software Development"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Java Software Development"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces use-case driven iterative software development techniques using a layered software architecture using the Java programming language. Topics include unit testing, the use of various software patterns, and refactoring code. Requires students to document and develop a project using layered software architecture.";
        _offeringsLabel.text = @"Summer 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    
    if ([self.selectedCourse  isEqual: @"672 Adv Java Software Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Adv Java Software Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Introduces advanced features of the Java software development environment along with auxiliary software development tools. Topics include Eclipse, the Ant build tool, the use of Java exceptions and logging, collections and generics, JDBC and object-relational mapping with Hibernate, XML processing, client-server programming, and multithreaded applications.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"674 Enterprise Java Software Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterprise Java Software Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continues the advanced use of the Java 2 Platform. Topics include web applications and Java 2 Enterprise Edition. Emphasizes the use of Java Servlets and Java Server Pages (JSPs) to develop web application using a layered software architecture. Other topics include Custom Tag libraries, Apache Struts, request and response filters, and security.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"676 Adv Enterprise Java Software Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Adv Enterprise Java Software Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Continues development of Java EE applications with Enterprise Web Service Technologies. Topics include:Java for XML Web Services, Java for RESTful Web Services, Context and Dependency Injection, Java Persistence API, Enterprise JavaBeans, and Application Security.";
        _offeringsLabel.text = @"Spring 8W2, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"680 C# Software Development"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"C# Software Development"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on programming on the.Net Frameworks and C#. Topics include Windows Forms Development, project deployment, data access with ADO.NET and XML, Web programming using ASP.NET and Web Forms, Web Services, and SQL Server and other RDBMS.";
        _offeringsLabel.text = @"Spring 8W1, 2015, Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"682 Enterpise C# Software Dev"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Enterpise C# Software Dev"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Focuses on programming on the.Net Frameworks and C#. Topics include Windows Forms Development, project deployment, data access with ADO.NET and XML, Web programming using ASP.NET and Web Forms, Web Services, and SQL Server and other RDBMS.";
        _offeringsLabel.text = @"Summer 8W2, 2015";
        
    }
    
    if ([self.selectedCourse  isEqual: @"696 Sftwr Engineer Practicum II"]){
        
        NSLog (@"course after if: %@", self.selectedCourse);
        
        [_titleLabel setText: @"Sftwr Engineer Practicum II"];
        
        NSLog (@"title should be: %@", _titleLabel);
        _descriptionTextBox.text =@"Completes development of the software system begun in MSSE 692. Concludes with a presentation and paper to mock stakeholders, such as senior management or investors.";
        _offeringsLabel.text = @"Spring 8W2, 2015";
        
    }


    
    
    
    
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

@end
