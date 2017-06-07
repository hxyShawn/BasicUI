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
#import "HXYMyViewController.h"
#import "BezierPathLearning.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    HXYLog();
}

- (void)bezierPathLearning
{
    BezierPathLearning *bezierPathView = [[BezierPathLearning alloc]init];
    [self.view addSubview:bezierPathView];
    [bezierPathView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view).mas_offset(130);
        make.height.mas_equalTo(100);
    }];
}

//BezierPath画图
- (void)drawCurveView
{
    //尝试用BezierPath画图,失败,数学不过关,不过也学到了不少东西
    //    drawCurve *drawCurveView = [[drawCurve alloc]init];
    //    [view addSubview:drawCurveView];
    //    [drawCurveView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.left.right.mas_equalTo(view);
    //        make.top.mas_equalTo(view.mas_top).mas_offset(130);
    //        make.height.mas_equalTo(100);
    //    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //画曲线
    //    [self drawCurveView];
//    [self bezierPathLearning];
    
    HXYMyViewController *vc = [[HXYMyViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
