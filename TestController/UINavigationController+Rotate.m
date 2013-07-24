//
//  UINavigationController+Rotate.m
//  TestController
//
//  Created by mac on 13-7-24.
//  Copyright (c) 2013年 xiaoran. All rights reserved.
//

#import "UINavigationController+Rotate.h"

@implementation UINavigationController (Rotate)
- (BOOL) shouldAutorotate
{
    
    //全部调用self.topViewController，就是返回当前呈现出来的viewController里面的设置
    
    return self.topViewController.shouldAutorotate;
    
}

- (NSUInteger)supportedInterfaceOrientations
{
    
    return self.topViewController.supportedInterfaceOrientations;
    
}



@end
