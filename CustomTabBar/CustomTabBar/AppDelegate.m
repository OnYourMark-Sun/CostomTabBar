//
//  AppDelegate.m
//  CustomTabBar
//
//  Created by yurong on 2017/7/12.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "AppDelegate.h"
#import "ChangeTabBarViewController.h"
//Normal
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"


//Double
#import "DoubleOneViewController.h"
#import "DoubleTwoViewController.h"
#import "DoubleThreeViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    UIViewController* myvc = [[ChangeTabBarViewController alloc] init];
    self.window.rootViewController = myvc;
    self.window.backgroundColor = whiteCo;
    [self.window makeKeyWindow];
    
    
    return YES;
}


-(void)CustomNormal{
    
    UITabBarController * tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[[[OneViewController alloc]init],[[TwoViewController alloc]init],[[ThreeViewController alloc]init],[[FourViewController alloc] init]];
    self.window.rootViewController = tab;
    
}

-(void)CustomDouble{
    
    UITabBarController * tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[[[DoubleOneViewController alloc]init],[[DoubleTwoViewController alloc]init],[[DoubleThreeViewController alloc]init]];
    self.window.rootViewController = tab;
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
