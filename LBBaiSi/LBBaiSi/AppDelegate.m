//
//  AppDelegate.m
//  LBBaiSi
//
//  Created by liubo on 2017/9/9.
//  Copyright © 2017年 liubo. All rights reserved.
//

#import "AppDelegate.h"
#import "LBBSTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height)];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [[LBBSTabBarController alloc]init];
    return YES;
}
@end
