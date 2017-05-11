//
//  HomePageModule.m
//  HomePageCenter
//
//  Created by zichen0422 on 2017/5/11.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "HomePageModule.h"
#import "HomePageVC.h"
#import <MGJRouter/MGJRouter.h>

@implementation HomePageModule

+(void)load
{
    [MGJRouter registerURLPattern:@"zichen://HomePage/PushMainVC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        
        HomePageVC *homePageVC = [[HomePageVC alloc] init];
        [navigationVC pushViewController:homePageVC animated:YES];
    }];
}

@end
