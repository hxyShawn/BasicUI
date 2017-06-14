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
#import "AdViewController.h"
#import "DynamicLabelViewController.h"
#import "AlterableHeightCellViewController.h"
#import "TestPriorityViewController.h"
#import "HXYAlertViewController.h"
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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //画曲线
    //    [self drawCurveView];
//    [self bezierPathLearning];
//    [self my];
//    [self adScrollView];
//    [self dynamicLabel];
//    [self dynamicCell];
//    [self testPriority];
    [self HXYAlertViewController];
}

- (void)DXPopViewLearning
{
    
}

- (void)HXYAlertViewController
{
    self.definesPresentationContext = YES;
    HXYAlertViewController *vc = [[HXYAlertViewController alloc]init];
    vc.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    vc.modalPresentationStyle = UIModalPresentationCurrentContext;
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)testPriority
{
    TestPriorityViewController *vc = [[TestPriorityViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)dynamicLabel
{
    DynamicLabelViewController *vc = [[DynamicLabelViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)dynamicCell
{
    AlterableHeightCellViewController *vc = [[AlterableHeightCellViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)adScrollView
{
    AdViewController *vc = [[AdViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)my
{
    HXYMyViewController *vc = [[HXYMyViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
