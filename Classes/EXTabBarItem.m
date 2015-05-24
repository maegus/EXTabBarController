//
//  EXTabBarItem.m
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "EXTabBarItem.h"

@interface EXTabBarItem ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UIImageView *backgroundImageView;

@end

@implementation EXTabBarItem

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.userInteractionEnabled = YES;

        CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        self.backgroundImageView = [[UIImageView alloc] initWithFrame:rect];
        self.iconImageView = [[UIImageView alloc] initWithFrame:rect];
        self.iconImageView.contentMode = UIViewContentModeCenter;

        [self addSubview:self.backgroundImageView];
        [self addSubview:self.iconImageView];
    }
    return self;
}

- (void)setUnselectedImage:(UIImage *)unselectedImage {
    _unselectedImage = unselectedImage;
    self.iconImageView.image = unselectedImage;
}

- (void)setUnselectedBackgroundImage:(UIImage *)unselectedBackgroundImage {
    _unselectedBackgroundImage = unselectedBackgroundImage;
    self.backgroundImageView.image = _unselectedBackgroundImage;
}

- (void)setUnselectedColor:(UIColor *)unselectedColor {
    _unselectedColor = unselectedColor;
    self.backgroundColor = _unselectedColor;
}

- (void)setSelected:(BOOL)selected {
    if (selected) {
        self.iconImageView.image = self.selectedImage;
        self.backgroundImageView.image = self.selectedBackgroundImage;
        self.backgroundColor = self.selectedColor;
    } else {
        self.iconImageView.image = self.unselectedImage;
        self.backgroundImageView.image = self.unselectedBackgroundImage;
        self.backgroundColor = self.unselectedColor;
    }
}

@end
