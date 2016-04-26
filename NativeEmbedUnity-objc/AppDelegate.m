//
//  AppDelegate.m
//  NativeEmbedUnity-objc
//
//  Created by Han Chen on 26/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import "AppDelegate.h"
#import "UnityViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) UnityViewController *unityViewController;

@end

@implementation AppDelegate

- (UIWindow *)unityWindow {
  return UnityGetMainWindow();
}

- (void)showUnityWindow {
//  [self.unityWindow makeKeyAndVisible];
  if (!self.unityViewController) {
    self.unityViewController = [[UnityViewController alloc] initWithNibName:nil bundle:nil];
  }
  [self.navController pushViewController:self.unityViewController animated:YES];
}

- (void)hideUnityWindow {
//  [self.window makeKeyAndVisible];
  [self.navController popViewControllerAnimated:YES];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window.backgroundColor = [UIColor redColor];
  ViewController *viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
  self.navController = [[UINavigationController alloc] initWithRootViewController:viewController];
  self.window.rootViewController = self.navController;
  self.unityAppController = [[UnityAppController alloc] init];
  [self.unityAppController application:application didFinishLaunchingWithOptions:launchOptions];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  [self.unityAppController applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  [self.unityAppController applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  [self.unityAppController applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  [self.unityAppController applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  [self.unityAppController applicationWillTerminate:application];
}

@end
