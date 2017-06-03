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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HXYMyInfoView *view = [[HXYMyInfoView alloc]init];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor grayColor];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.mas_equalTo(self.view);
        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.5);
    }];
    
//    drawCurve *drawCurveView = [[drawCurve alloc]init];
//    [self.view addSubview:drawCurveView];
//    drawCurveView.backgroundColor = [UIColor greenColor];
//    [drawCurveView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.right.mas_equalTo(self.view);
//        make.height.mas_equalTo(self.view.mas_height).multipliedBy(0.5);
//    }];
    

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
