//
//  ViewController.m
//  VerifyCodeButton
//
//  Created by wangyue on 16/1/19.
//  Copyright © 2016年 wangyue. All rights reserved.
//

#import "ViewController.h"
#import "DZVerifyCodeButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DZVerifyCodeButton *btn = [[DZVerifyCodeButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(achieveVerifyCode:) forControlEvents:UIControlEventTouchUpInside];

}

- (void)achieveVerifyCode: (DZVerifyCodeButton *)verifyCodeButton {
//    [verifyCodeButton timeFailBeginFrom:60];
    verifyCodeButton.timeCount = 60;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
