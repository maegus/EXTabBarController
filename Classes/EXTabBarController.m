//
//  EXTabBarController.m
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "EXTabBarController.h"
#import <objc/runtime.h>

@interface EXTabBarController ()

@property (nonatomic, assign) NSUInteger viewControllerCount;

@end

@implementation EXTabBarController

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        SEL originalSelector = @selector(setViewControllers:);
        SEL swizzledSelector = @selector(ex_setViewControllers:);
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        BOOL didAddMethod =
        class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (didAddMethod){
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden = YES;
}

- (void)ex_setViewControllers:(NSArray *)viewControllers {
    self.viewControllerCount = viewControllers.count;
    return [self ex_setViewControllers:viewControllers];
}

- (void)setViewControllerCount:(NSUInteger)viewControllerCount {
    _viewControllerCount = viewControllerCount;
    self.ex_tabBar = [[EXTabBar alloc] initWithCount:_viewControllerCount];
    self.ex_tabBar.tabBarController = self;
    if (self.ex_tabBar.superview) {
        [self.ex_tabBar removeFromSuperview];
    } else {
        [self.view addSubview:self.ex_tabBar];
    }
}


@end
