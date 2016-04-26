//
//  AppDelegate.h
//  NativeEmbedUnity-objc
//
//  Created by Han Chen on 26/4/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIWindow *unityWindow;
@property (strong, nonatomic) UnityAppController *unityAppController;

- (void)showUnityWindow;
- (void)hideUnityWindow;

@end

