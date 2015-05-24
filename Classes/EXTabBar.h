//
//  EXTabBar.h
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EXTabBarController;

@interface EXTabBar : UIView

@property (nonatomic, strong) NSArray *unselectedImages;
@property (nonatomic, strong) NSArray *selectedImages;

@property (nonatomic, strong) NSArray *unselectedBackgroundImages;
@property (nonatomic, strong) NSArray *selectedBackgroundImages;

@property (nonatomic, strong) NSArray *unselectedColors;
@property (nonatomic, strong) NSArray *selectedColors;

@property (nonatomic, weak) EXTabBarController *tabBarController;

- (instancetype)initWithCount:(NSUInteger)count;
- (void)setSelectedIndex:(NSUInteger)index;

@end
