//
//  EXTabBarItem.h
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EXTabBarItem : UIView

@property (nonatomic, strong) UIImage *unselectedImage;
@property (nonatomic, strong) UIImage *selectedImage;

@property (nonatomic, strong) UIImage *unselectedBackgroundImage;
@property (nonatomic, strong) UIImage *selectedBackgroundImage;

@property (nonatomic, strong) UIColor *unselectedColor;
@property (nonatomic, strong) UIColor *selectedColor;

- (instancetype)initWithFrame:(CGRect)frame;

- (void)setSelected:(BOOL)selected;

@end
