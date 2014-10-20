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
//@synthesize displayLucy;
UIWebView *displayLucy;

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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Lucy" ofType:@"html"];
    if (path){
        
        NSData *data=[NSData dataWithContentsOfFile:path];
        displayLucy =  [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-100)];
        [displayLucy loadData:data MIMEType:@"text/html" textEncodingName:@"convert"  baseURL:nil];
        displayLucy.scalesPageToFit=YES;
        displayLucy.scrollView.showsVerticalScrollIndicator=YES;
        displayLucy.scrollView.scrollEnabled= YES;
        [self.view addSubview:displayLucy];
    }
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
