//
//  EXTabBarController.h
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EXTabBar.h"

@protocol EXTabBarControllerProtocol <NSObject>

- (void)tabBarControllerSwitchIndex:(NSUInteger)index;

@end

@interface EXTabBarController : UITabBarController

@property (nonatomic, strong) EXTabBar *ex_tabBar;

@end
