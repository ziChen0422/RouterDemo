//
//  AppDelegate.m
//  RouterDemo
//
//  Created by zichen0422 on 2017/5/11.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface AppDelegate ()

@property (nonatomic, strong) ViewController *viewController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.viewController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
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

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(nullable NSString *)sourceApplication annotation:(id)annotation
{
    NSLog(@"url---%@", url);
    
//    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
//    NSString *urlString = [url query];
//    for (NSString *param in [urlString componentsSeparatedByString:@"&"]) {
//        NSArray *elts = [param componentsSeparatedByString:@"="];
//        if([elts count] < 2) continue;
//        [params setObject:[elts lastObject] forKey:[elts firstObject]];
//    }
//    
//    NSLog(@"dic -- %@", params);
    
    // 此页面不带 navigationController, 所以可以在对面的处理页面, 获取rootViewController处理
    NSString *urlPath = [url absoluteString];
    [MGJRouter openURL:urlPath
          withUserInfo:nil
            completion:nil];
    
    return YES;
}

- (ViewController *)viewController
{
    if (!_viewController) {
        _viewController = [[ViewController alloc] init];
    }
    return _viewController;
}

@end
