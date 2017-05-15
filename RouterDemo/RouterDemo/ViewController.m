//
//  ViewController.m
//  RouterDemo
//
//  Created by zichen0422 on 2017/5/11.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "ViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.navigationItem.title = @"RouterDemo";
    
    [self initViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 跳转到HomePage页面
- (void)homePageBtnClicked
{
    [MGJRouter openURL:@"zichen://HomePage/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController}
            completion:nil];
}

// 跳转到用户中心
- (void)userInfoBtnClicked
{
    [MGJRouter openURL:@"zichen://UserInfoCenter/PushMainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController}
            completion:nil];
}

#pragma mark - /*** init All Views ***/
- (void)initViews
{
    UIButton *homePageBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 120, 100, 50)];
    [homePageBtn setTitle:@"HomePage" forState:UIControlStateNormal];
    [homePageBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    homePageBtn.backgroundColor = [UIColor redColor];
    [homePageBtn addTarget:self action:@selector(homePageBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:homePageBtn];
    
    
    UIButton *userInfoBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 220, 100, 50)];
    [userInfoBtn setTitle:@"userInfo" forState:UIControlStateNormal];
    [userInfoBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    userInfoBtn.backgroundColor = [UIColor redColor];
    [userInfoBtn addTarget:self action:@selector(userInfoBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:userInfoBtn];
}

@end
