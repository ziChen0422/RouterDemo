//
//  RouterViewController.m
//  RouterDemo
//
//  Created by zichen0422 on 2017/5/15.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "RouterViewController.h"

@interface RouterViewController ()

@property (nonatomic, strong) UILabel *idlabel;
@property (nonatomic, strong) UILabel *numlabel;

@end

@implementation RouterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"RouterTitle";

    [self initAllViews];
    
    self.idlabel.text = [NSString stringWithFormat:@"id --- %@", self.detailId];
    self.numlabel.text = [NSString stringWithFormat:@"pageNum --- %@", self.pageNum];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma /****************** life cycle ********************/


#pragma /****************** Functions *********************/


#pragma /****************** init All views ****************/
- (UILabel *)idlabel
{
    if (!_idlabel) {
        _idlabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 160, [UIScreen mainScreen].bounds.size.width - 100, 50)];
        _idlabel.backgroundColor = [UIColor lightGrayColor];
        _idlabel.textColor = [UIColor whiteColor];
        _idlabel.textAlignment = NSTextAlignmentCenter;
    }
    return _idlabel;
}

- (UILabel *)numlabel
{
    if (!_numlabel) {
        _numlabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 250, [UIScreen mainScreen].bounds.size.width - 100, 50)];
        _numlabel.backgroundColor = [UIColor lightGrayColor];
        _numlabel.textColor = [UIColor whiteColor];
        _numlabel.textAlignment = NSTextAlignmentCenter;
    }
    return _numlabel;
}

//初始化所有的views
- (void)initAllViews
{
    [self.view addSubview:self.idlabel];
    [self.view addSubview:self.numlabel];
}

@end
