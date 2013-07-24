//
//  UINavigationController+Rotate.h
//  TestController
//
//  Created by mac on 13-7-24.
//  Copyright (c) 2013年 xiaoran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Rotate)

- (BOOL) shouldAutorotate;
- (NSUInteger)supportedInterfaceOrientations;


@end
