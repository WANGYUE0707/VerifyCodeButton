//
//  DZVerifyCodeButton.m
//  zhixing
//
//  Created by wangyue on 15/12/30.
//  Copyright © 2015年 wangyue. All rights reserved.
//

#import "DZVerifyCodeButton.h"

@interface DZVerifyCodeButton ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, weak) UIButton *verifyBtn;

@end

@implementation DZVerifyCodeButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *verifyBtn = [[UIButton alloc] init];
        verifyBtn.backgroundColor = [UIColor grayColor];
        [self setTitle:@"点击获取验证码" forState:UIControlStateNormal];
    }
    return self;
}

- (void)setTimeCount:(NSInteger)timeCount {
    self.enabled = NO;
    self.count = timeCount;
    [self setTitle:[NSString stringWithFormat:@"剩余%ld秒", self.count] forState:UIControlStateDisabled];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
}

//- (void)timeFailBeginFrom:(NSInteger) timeCount {
////    DZLog(@"----");
//    self.count = timeCount;
//    self.enabled = NO;
//    [self setTitle:[NSString stringWithFormat:@"剩余%ld秒", self.count] forState:UIControlStateDisabled];
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
//}

- (void)timerFired {
    if (self.count != 1) {
        self.count -= 1;
        [self setTitle:[NSString stringWithFormat:@"剩余%ld秒", self.count] forState:UIControlStateDisabled];
    } else {
        
        self.enabled = YES;
        [self setTitle:@"点击获取验证码" forState:UIControlStateNormal];
//        self.count = 60;
        [self.timer invalidate];
    }
}

@end
