//
//  ViewController.m
//  textAll
//
//  Created by 贺东方 on 17/5/27.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "HXYMyInfoView.h"
#import "drawCurve.h"
#import "HXYCurveView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    HXYMyInfoView *view = [[HXYMyInfoView alloc]init];
//    [self.view addSubview:view];
//    view.backgroundColor = [UIColor grayColor];
//    [view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.right.mas_equalTo(self.view);
//        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.5);
//    }];
    
    //    [self drawCurveView];
    
    UIView *downView = [[UIView alloc]init];
    [self.view addSubview:downView];
    UIImageView *dowimgv = [[UIImageView alloc]init];
    dowimgv.image = [UIImage imageNamed:@"my_info_down"];
    [downView addSubview:dowimgv];
    [downView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.mas_equalTo(self.view);
        make.height.mas_equalTo(220);
    }];
    [dowimgv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(downView);
    }];

    UIView *upView = [[UIView alloc]init];
    [downView addSubview:upView];
    UIImageView *imgv = [[UIImageView alloc]init];
    imgv.image = [UIImage imageNamed:@"my_info_up"];
    [upView addSubview:imgv];
    
    [upView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(downView);
        make.height.mas_equalTo(100);
    }];
    [imgv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(upView);
    }];
}

//BezierPath画图
- (void)drawCurveView
{
    //尝试用BezierPaht画图,失败,数学不过关,不过也学到了不少东西
    //    drawCurve *drawCurveView = [[drawCurve alloc]init];
    //    [view addSubview:drawCurveView];
    //    [drawCurveView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.left.right.mas_equalTo(view);
    //        make.top.mas_equalTo(view.mas_top).mas_offset(130);
    //        make.height.mas_equalTo(100);
    //    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
