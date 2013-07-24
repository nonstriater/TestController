//
//  ViewController2.m
//  TestController
//
//  Created by mac on 13-7-23.
//  Copyright (c) 2013年 xiaoran. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
    
    NSLog(@"view2 = %@",self.view);
    NSLog(@"view2 superview = %@",self.view.superview); // 这个时候superview还没有实例化，为nil
    NSLog(@"vc2 parentVC = %@",self.parentViewController);// nil
    
}


- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)viewDidAppear:(BOOL)animated
{
    
    NSLog(@"view2 superview = %@",self.view.superview); // 
    NSLog(@"vc2 parentVC = %@",self.parentViewController); //

}

//#if __IPHONE_OS_VERSION_MIN_REQUIRED
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
    
}

- (BOOL)shouldAutorotate
{
    return NO;
    
}

- (NSUInteger)supportedInterfaceOrientations
{

    return  UIInterfaceOrientationMaskPortrait ;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)dealloc
{
    [super dealloc];
}

@end
