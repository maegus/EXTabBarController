//
//  AppDelegate.m
//  EXTabBarController
//
//  Created by apple on 15/5/23.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "AppDelegate.h"
#import "EXTabBarController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    EXTabBarController *tabBarController = [[EXTabBarController alloc] init];
    ViewController *vc1 = [[ViewController alloc] init];
    vc1.view.backgroundColor = [UIColor whiteColor];
    ViewController *vc2 = [[ViewController alloc] init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    ViewController *vc3 = [[ViewController alloc] init];
    vc3.view.backgroundColor = [UIColor redColor];
    ViewController *vc4 = [[ViewController alloc] init];
    vc4.view.backgroundColor = [UIColor redColor];

    tabBarController.viewControllers = @[vc1, vc2, vc3, vc4];
    tabBarController.ex_tabBar.unselectedBackgroundImages = @[[UIImage imageNamed:@"main"],
                                                              [UIImage imageNamed:@"notification"],
                                                              [UIImage imageNamed:@"profile"],
                                                              [UIImage imageNamed:@"add"]];
    tabBarController.ex_tabBar.selectedBackgroundImages = @[[UIImage imageNamed:@"mainSelected"],
                                                            [UIImage imageNamed:@"notificationSelected"],
                                                            [UIImage imageNamed:@"profileSelected"],
                                                            [UIImage imageNamed:@"add"]];
    [tabBarController.ex_tabBar setSelectedIndex:0];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
