//
//  ViewController.m
//  openUrlDemo
//
//  Created by zichen0422 on 2017/5/15.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"openRouterDemo";
    
    UIButton *viewbtn = [[UIButton alloc] initWithFrame:CGRectMake(60, 160, 200, 50)];
    viewbtn.backgroundColor = [UIColor lightGrayColor];
    [viewbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [viewbtn setTitle:@"openRouterDemo" forState:UIControlStateNormal];
    [self.view addSubview:viewbtn];
    [viewbtn addTarget:self action:@selector(openUrlBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)openUrlBtn
{
    NSURL *url = [NSURL URLWithString:@"zichen://HomePage/PushMainVC"];
    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 10.0) {
        [[UIApplication sharedApplication] openURL:url options:nil completionHandler:^(BOOL success) {
            NSLog(@"UIApplication sharedApplication");
        }];
    }
    else {
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
