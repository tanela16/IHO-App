//
//  LucyViewController.m
//  IHO-ASU
//
//  Created by Cynosure on 4/29/14.
//  Copyright (c) 2014 ASU. All rights reserved.
//

#import "LucyViewController.h"

@interface LucyViewController ()


@end

@implementation LucyViewController
@synthesize displayLucy;
//UIWebView *displayLucy;

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
    bool ipad = ([[UIDevice currentDevice]userInterfaceIdiom ] == UIUserInterfaceIdiomPad);
    // Do any additional setup after loading the view.
    NSString *htmlpath = [[NSBundle mainBundle] pathForResource:@"lucy" ofType:@"html"];
    if (htmlpath){
        NSString *html = [NSString stringWithContentsOfFile:htmlpath encoding:NSUTF8StringEncoding error:nil];
        NSURL *baseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@", [[NSBundle mainBundle] bundlePath]]];
        displayLucy.scalesPageToFit=NO;
        [self.displayLucy loadHTMLString:html baseURL:baseURL];
        displayLucy.scrollView.showsVerticalScrollIndicator=YES;
        displayLucy.scrollView.scrollEnabled= YES;
        //[self.view addSubview:displayLucy];
        
    }
    [displayLucy setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];

    self.navigationController.toolbarHidden = NO;
    [self.navigationController.toolbar setTranslucent:NO];
    [UIFont fontWithName:@"Arial-MT" size:15];
    UIBarButtonItem *customItem1 = [[UIBarButtonItem alloc]
                                    initWithTitle:nil style:UIBarButtonItemStyleBordered
                                    target:self action:nil];
    
    UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"ASU IHO 2014" style:UIBarButtonItemStyleDone
                                    target:self action:nil];
    customItem2.tintColor = [UIColor colorWithWhite:1 alpha:1];
    
    
    if(!ipad){
        [customItem1 setWidth:self.navigationController.toolbar.frame.size.width/4];
        [customItem2 setWidth:self.navigationController.toolbar.frame.size.width/2];
        
    }
    else{
        
    }
    
    
    NSArray *toolbarItems = [NSArray arrayWithObjects:
                             customItem1,customItem2,nil];
    
    self.toolbarItems = toolbarItems;

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation: (UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [displayLucy setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
