//
//  DonateViewController.m
//  IHO
//
//  Created by Cynosure on 11/30/13.
//  Copyright (c) 2013 asu. All rights reserved.
//

#import "DonateViewController.h"

@interface DonateViewController ()

@end

@implementation DonateViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view.
    //menubar specifications
  //  [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.22f green:0.42f blue:0.62f alpha:1.0 ]];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};

    
    
    //Assign label
    CGRect textview1 = CGRectMake(10, 0,300, 100);
    UILabel *link_desc1 = [[UILabel alloc] initWithFrame:textview1];
    link_desc1.text  = @"To give directly to IHO online through the ASU Foundation:";
    [link_desc1 setFont:[UIFont fontWithName:@"Arial" size:14] ];
    [link_desc1 setNumberOfLines:3];
    //Assign rest of text
    CGRect textview2 = CGRectMake(10, 120,300,350);
    UITextView *link_desc2 = [[UITextView alloc] initWithFrame:textview2];
    NSString *path= [[NSBundle mainBundle] pathForResource:@"Donate" ofType:@"txt"];
    link_desc2.text  = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding  error:NULL];
    [link_desc2 setFont:[UIFont systemFontOfSize:14] ];
    link_desc2.editable=NO;
   
    
    //add to the view
    [self.view addSubview:link_desc1];
    [self.view addSubview:link_desc2];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
