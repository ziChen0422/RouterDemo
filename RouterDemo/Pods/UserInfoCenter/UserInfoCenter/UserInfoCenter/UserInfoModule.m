//
//  UserInfoModule.m
//  UserInfoCenter
//
//  Created by zichen0422 on 2017/5/11.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "UserInfoModule.h"
#import <UIKit/UIKit.h>
#import <MGJRouter/MGJRouter.h>
#import "UserInfoVC.h"

@implementation UserInfoModule

+ (void)load
{
    [MGJRouter registerURLPattern:@"zichen://UserInfoCenter/PushMainVC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        UserInfoVC *homePageVC = [[UserInfoVC alloc] init];
        [navigationVC pushViewController:homePageVC animated:YES];
    }];
}

@end
