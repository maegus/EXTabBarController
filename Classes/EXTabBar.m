//
//  EXTabBar.m
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "EXTabBar.h"
#import "EXTabBarItem.h"
#import "EXTabBarController.h"

CGFloat const tabBarHeight = 50;

@interface EXTabBar ()

@property (nonatomic, strong) NSMutableArray *tabBarItems;

@end

@implementation EXTabBar

- (instancetype)initWithCount:(NSUInteger)count {
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    CGFloat height = [[UIScreen mainScreen] bounds].size.height;
    if (self = [super initWithFrame:CGRectMake(0, height - tabBarHeight, width, tabBarHeight)]) {
        self.tabBarItems = [[NSMutableArray alloc] init];
        CGFloat itemWidth = width / count;
        for (NSUInteger i = 0; i < count; i++) {
            EXTabBarItem *item = [[EXTabBarItem alloc] initWithFrame:CGRectMake(itemWidth * i, 0, itemWidth, tabBarHeight)];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(switchController:)];
            [item addGestureRecognizer:tap];
            item.tag = i;
            [self addSubview:item];
            [self.tabBarItems addObject:item];
        }
    }
    return self;
}

- (void)setSelectedImages:(NSArray *)selectedImages {
    [self sanityCheck:selectedImages];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.selectedImage = selectedImages[idx];
    }];
    _selectedImages = selectedImages;
}

- (void)setUnselectedImages:(NSArray *)unselectedImages {
    [self sanityCheck:unselectedImages];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.unselectedImage = unselectedImages[idx];
    }];
    _unselectedImages = unselectedImages;
}

- (void)setSelectedColors:(NSArray *)selectedColors {
    [self sanityCheck:selectedColors];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.selectedColor = selectedColors[idx];
    }];
    _selectedColors = selectedColors;
}

- (void)setUnselectedColors:(NSArray *)unselectedColors {
    [self sanityCheck:unselectedColors];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.unselectedColor = unselectedColors[idx];
    }];
    _unselectedColors = unselectedColors;
}

- (void)setSelectedBackgroundImages:(NSArray *)selectedBackgroundImages {
    [self sanityCheck:selectedBackgroundImages];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.selectedBackgroundImage = selectedBackgroundImages[idx];
    }];
    _selectedBackgroundImages = selectedBackgroundImages;
}

- (void)setUnselectedBackgroundImages:(NSArray *)unselectedBackgroundImages {
    [self sanityCheck:unselectedBackgroundImages];
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        item.unselectedBackgroundImage = unselectedBackgroundImages[idx];
    }];
    _unselectedBackgroundImages = unselectedBackgroundImages;
}

- (void)switchController:(UITapGestureRecognizer *)gesture {
    NSUInteger tag = gesture.view.tag;
    self.tabBarController.selectedIndex = tag;
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        if (idx == tag) {
            [item setSelected:YES];
        } else {
            [item setSelected:NO];
        }
    }];
}

- (void)sanityCheck:(NSArray *)images {
    NSAssert(images.count == self.tabBarItems.count, @"FATAL ERROR: images count must equal to tabBarItems count");
}

- (void)setSelectedIndex:(NSUInteger)index {
    self.tabBarController.selectedIndex = index;
    [self.tabBarItems enumerateObjectsUsingBlock:^(EXTabBarItem *item, NSUInteger idx, BOOL *stop) {
        if (idx == index) {
            [item setSelected:YES];
        } else {
            [item setSelected:NO];
        }
    }];
}

@end
