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
#import "HXYCustomButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    HXYMyInfoView *view = [[HXYMyInfoView alloc]init];
//    [self.view addSubview:view];
//    view.backgroundColor = [UIColor greenColor];
//    [view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.right.mas_equalTo(self.view);
//        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.5);
//    }];
    
//    drawCurve *drawCurveView = [[drawCurve alloc]init];
//    [self.view addSubview:drawCurveView];
//    drawCurveView.backgroundColor = [UIColor greenColor];
//    [drawCurveView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.right.mas_equalTo(self.view);
//        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.5);
//    }];
    
    HXYCustomButton *button = [[HXYCustomButton alloc]initWithType:HXYCustomButtonDirectionTypeVertical imageSize:CGSizeMake(40, 40) space:@4];
    button.frame = CGRectMake(10, 10, 100, 100);
    [button setImageStr:@"estimateSelected" forState:UIControlStateNormal];
    [button setImageStr:@"estimateUnSelected" forState:UIControlStateSelected];
    [button setText:@"全部人" forState:UIControlStateNormal];
    [button setText:@"么了" forState:UIControlStateSelected];
    [button setTextColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTextColor:[UIColor redColor] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(btnBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    HXYCustomButton *horizontalBtn = [[HXYCustomButton alloc]initWithType:HXYCustomButtonDirectionTypeHorizontal imageSize:CGSizeMake(20, 20) space:nil];
    horizontalBtn.frame = CGRectMake(100, 100, 100, 22);
    [horizontalBtn setImageStr:@"estimateSelected" forState:UIControlStateNormal];
    [horizontalBtn setImageStr:@"estimateUnSelected" forState:UIControlStateSelected];
    [horizontalBtn setText:@"全部" forState:UIControlStateNormal];
    [horizontalBtn setText:@"么了" forState:UIControlStateSelected];
    [horizontalBtn setTextColor:[UIColor greenColor] forState:UIControlStateNormal];
    [horizontalBtn setTextColor:[UIColor redColor] forState:UIControlStateSelected];
    [horizontalBtn addTarget:self action:@selector(btnBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:horizontalBtn];
}
- (void)btnBtnClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
