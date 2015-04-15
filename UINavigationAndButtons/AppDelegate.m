//
//  AppDelegate.m
//  UINavigationAndButtons
//
//  Created by Daniel Goncalves on 2015-04-15.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "FeedViewController.h"
#import "FavoritesViewController.h"
#import "ProfileViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect viewRect = [[UIScreen mainScreen] bounds]; self.window = [[UIWindow alloc] initWithFrame:viewRect];
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    colorView.backgroundColor = [UIColor yellowColor];
    colorTouchVC.view = colorView;
    self.window.rootViewController = colorTouchVC;
    [self.window makeKeyAndVisible];
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    UINavigationController *profileNavController = [[UINavigationController alloc] initWithRootViewController:profileViewController];
    
    FeedViewController *feedViewController = [[FeedViewController alloc] init];
    UINavigationController *feedNavController = [[UINavigationController alloc] initWithRootViewController:feedViewController];
    
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    UINavigationController *favoritesNavController = [[UINavigationController alloc] initWithRootViewController:favoritesViewController];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = @[profileNavController, feedNavController, favoritesNavController];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabController;
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
