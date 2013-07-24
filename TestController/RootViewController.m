//
//  RootViewController.m
//  TestController
//
//  Created by mac on 13-7-23.
//  Copyright (c) 2013年 xiaoran. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController2.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"window = %@",[UIApplication sharedApplication].keyWindow);
    NSLog(@"root view  = %@",self.view);
    NSLog(@"root view superview = %@",self.view.superview);
    
    
    ViewController2 *vc = [[[ViewController2 alloc] initWithNibName:nil bundle:nil] autorelease];// 要加autorelease
    NSLog(@"vc2 retain count = %d",[vc retainCount]);
    [self addChildViewController:vc];
    [self.view addSubview:vc.view]; // 并不会retain vc
    
    //[self presentViewController:vc animated:YES completion:^{ NSLog(@"presenting finished !!!");} ];
    NSLog(@"vc2 view retain count = %d",[vc.view retainCount]); // 怎么会是7呢？
    NSLog(@"vc2 retain count = %d",[vc retainCount]);
    NSLog(@"self.view.subviews = %@",self.view.subviews);
    NSLog(@"root subview vc = %@",self.childViewControllers); // 没有vc
    
    
}



- (BOOL)shouldAutorotate
{
    return YES;
    
}

- (NSUInteger)supportedInterfaceOrientations
{
    
    return  UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown | UIInterfaceOrientationMaskLandscapeLeft;
}



- (void)viewDidAppear:(BOOL)animated
{

    NSLog(@"root view = %@",self.view);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
