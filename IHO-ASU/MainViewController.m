//
//  ViewController.m
//  IHO
//
//  Created by Cynosure on 11/13/13.
//  Copyright (c) 2013 asu. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize  news,field,donate,about,gallery,contact,menu,ihoLogo,credit;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView;
    bool ipad = ([[UIDevice currentDevice]userInterfaceIdiom ] == UIUserInterfaceIdiomPad);
    NSString *htmlpath = nil;
    
    if(!ipad){
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,self.navigationController.navigationBar.frame.size.width/1.5, self.navigationController.navigationBar.frame.size.height/1.5)];
    }
    else{
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,self.navigationController.navigationBar.frame.size.width/2.5, self.navigationController.navigationBar.frame.size.height/1.5)];
    }
    imageView.image = [UIImage imageNamed:@"IHOlogoforapp.jpg"];
    UIView *logoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, imageView.frame.size.width, imageView.frame.size.height)];
    [logoView addSubview:imageView];
    
    
    [self.navigationItem setTitleView:logoView];
    
    news.layer.cornerRadius=15;
    //[news setBackgroundColor:[UIColor colorWithRed:0 green:0.2 blue:0.4 alpha:1.0]];
    about.layer.cornerRadius=15;
    //[about setBackgroundColor:[UIColor colorWithRed:0 green:0.2f blue:0.4f alpha:1.0]];
    donate.layer.cornerRadius=15;
    // [donate setBackgroundColor:[UIColor colorWithRed:0 green:0.2f blue:0.4f alpha:1.0]];
    gallery.layer.cornerRadius=15;
    //[gallery setBackgroundColor:[UIColor colorWithRed:0 green:0.2f blue:0.4f alpha:1.0]];
    contact.layer.cornerRadius=15;
    //[contact setBackgroundColor:[UIColor colorWithRed:0 green:0.2f blue:0.4f alpha:1.0]];
    field.layer.cornerRadius=15;
    // [field setBackgroundColor:[UIColor colorWithRed:0.22f green:0.42f blue:0.62f alpha:1.0]];
    
    
    self.ihoLogo.scalesPageToFit = YES;
    self.ihoLogo.scrollView.scrollEnabled=NO;
    self.ihoLogo.scrollView.bounces=NO;
    
    if(!ipad)
    htmlpath = [[NSBundle mainBundle] pathForResource:@"skull" ofType:@"html"];
    else
     htmlpath = [[NSBundle mainBundle] pathForResource:@"skulliPad" ofType:@"html"];
    
    NSString *html = [NSString stringWithContentsOfFile:htmlpath encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@", [[NSBundle mainBundle] bundlePath]]];
    ihoLogo.scalesPageToFit = NO;
    [self.ihoLogo loadHTMLString:html baseURL:baseURL];
    ihoLogo.scrollView.scrollEnabled=false;
    //set up toolbar
    
    UIBarButtonItem *customItem1 = [[UIBarButtonItem alloc]
                                    initWithTitle:nil style:UIBarButtonItemStyleBordered
                                    target:self action:nil];
   
    UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"IHOASU 2014" style:UIBarButtonItemStyleDone
                                    target:self action:nil];
    customItem2.tintColor = [UIColor colorWithWhite:1 alpha:1];
    
    UIBarButtonItem *customItem3 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"Credits" style:UIBarButtonItemStyleDone
                                    target:self action:nil];
   customItem3.tintColor = [UIColor colorWithWhite:1 alpha:1];
    UIBarButtonItem *customItem4 = [[UIBarButtonItem alloc]
                                    initWithTitle:nil style:UIBarButtonItemStyleDone
                                    target:self action:nil];


    NSArray *toolbarItems = [NSArray arrayWithObjects: 
                             customItem1,customItem2, customItem3,customItem4, nil];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(5,5,100,100)];
    [title setNumberOfLines:1];
    title.text = @"ASU IHO @2014";
    self.navigationController.toolbarHidden = NO;
    [self.navigationController.toolbar setTranslucent:NO];
    self.toolbarItems = toolbarItems;
   
    
   
}



/*- (void)awakeFromNib
 {
 isShowingLandscapeView = NO;
 [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
 [[NSNotificationCenter defaultCenter] addObserver:self
 selector:@selector(orientationChanged:)
 name:UIDeviceOrientationDidChangeNotification
 object:nil];
 }
 
 - (void)orientationChanged:(NSNotification *)notification
 {
 UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
 if (UIDeviceOrientationIsLandscape(deviceOrientation) &&
 !isShowingLandscapeView)
 {
 [self performSegueWithIdentifier:@"DisplayAlternateView" sender:self];
 isShowingLandscapeView = YES;
 }
 else if (UIDeviceOrientationIsPortrait(deviceOrientation) &&
 isShowingLandscapeView)
 {
 [self dismissViewControllerAnimated:YES completion:nil];
 isShowingLandscapeView = NO;
 }
 }*/



-(void) creditPage{
    
}

-(void) viewWillAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
