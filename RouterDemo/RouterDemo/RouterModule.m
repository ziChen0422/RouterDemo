//
//  RouterModule.m
//  RouterDemo
//
//  Created by zichen0422 on 2017/5/15.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "RouterModule.h"
#import <UIKit/UIKit.h>
#import <MGJRouter/MGJRouter.h>
#import "RouterViewController.h"

@implementation RouterModule

+ (void)load
{
    [MGJRouter registerURLPattern:@"zichen://RouterDetail?id=id&pageNum=pageNum" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *vc = nav.topViewController;
        
        //获取ID, pageNum字段
        NSString *detailId = routerParameters[@"id"];
        NSString *pageNum = routerParameters[@"pageNum"];
        
        NSLog(@"--- %@ --id %@ --num %@", routerParameters, detailId, pageNum);
        
        RouterViewController *detailVC = [[RouterViewController alloc] init];
        detailVC.detailId = detailId;
        detailVC.pageNum = pageNum;
        [vc.navigationController pushViewController:detailVC animated:YES];
    }];
}

@end
