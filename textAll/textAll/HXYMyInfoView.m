//
//  HXYMyInfoView.m
//  textAll
//
//  Created by 贺东方 on 17/6/1.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "HXYMyInfoView.h"
#import "HXYCustomButton.h"
#import <Masonry.h>

@interface HXYMyInfoView()

@property (nonatomic, strong) UIView *upView;   //topView的上部分
@property (nonatomic, strong) UIView *downView; //topView的下部分
@property (nonatomic, strong) UIView *topView;  //显示信息的view
@property (nonatomic, strong) UIView *middleView;   //中间的三个按钮
@property (nonatomic, strong) UIView *bottomView;   //下面的三个按钮
@property (nonatomic, strong) UIView *avatarView;   //头像
@property (nonatomic, strong) HXYCustomButton *followBtn;   //关注
@property (nonatomic, strong) HXYCustomButton *fansBtn;     //烦死
@property (nonatomic, strong) HXYCustomButton *skillBtn;    //技能

@end
@implementation HXYMyInfoView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.topView];
        [self.topView addSubview:self.downView];
        [self.topView addSubview:self.upView];
        [self.topView addSubview:self.avatarView];
        [self.topView addSubview:self.followBtn];
        [self.topView addSubview:self.fansBtn];
        [self.topView addSubview:self.skillBtn];
        [self addSubview:self.middleView];
        [self addSubview:self.bottomView];
        [self initUI];
    }
    return self;
}
#pragma mark - private
- (void)initUI
{
    self.middleView.backgroundColor = [UIColor purpleColor];
    self.bottomView.backgroundColor = [UIColor blueColor];
    [self.topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.left.mas_equalTo(self);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.5);
    }];
    
    [self.middleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self);
        make.top.mas_equalTo(self.topView.mas_bottom);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.25);
    }];
    
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self);
        make.top.mas_equalTo(self.middleView.mas_bottom);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.25);
    }];
    
    [self.upView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(self.topView);
        make.height.mas_equalTo(self.topView.mas_height).multipliedBy(0.5);
    }];
    [self.downView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.topView);
    }];
}



#pragma mark - public


#pragma mark - delegate


#pragma mark - getter&setter
- (UIView *)topView
{
    if (!_topView) {
        _topView = [[UIView alloc]init];
    }
    return _topView;
}
- (UIView *)middleView
{
    if (!_middleView) {
        _middleView = [[UIView alloc]init];
    }
    return _middleView;
}
- (UIView *)bottomView
{
    if (!_bottomView) {
        _bottomView = [[UIView alloc]init];

    }
    return _bottomView;
}

- (UIView *)upView
{
    if (!_upView) {
        _upView = [[UIView alloc]init];
        UIImage *image = [UIImage imageWithContentsOfFile:@"my_info_top"];
        _upView.contentMode = UIViewContentModeScaleAspectFill;
        _upView.layer.contents = (__bridge id)image.CGImage;
    }
    return _upView;
}

- (UIView *)downView
{
    if (!_downView) {
        _downView = [[UIView alloc]init];
        UIImage *image = [UIImage imageWithContentsOfFile:@"my_info_bottom"];
        _downView.contentMode = UIViewContentModeScaleAspectFill;
        _downView.layer.contents = (__bridge id)image.CGImage;
    }
    return _downView;
}

- (UIView *)avatarView
{
    if (!_avatarView) {
        _avatarView = [[UIView alloc]init];
    }
    return _avatarView;
}

- (HXYCustomButton *)followBtn
{
    if (!_followBtn) {
        _followBtn = [[HXYCustomButton alloc]init];
        
    }
    return _followBtn;
}

- (HXYCustomButton *)fansBtn
{
    if (!_fansBtn) {
        _fansBtn = [[HXYCustomButton alloc]init];
        
    }
    return _fansBtn;
}

- (HXYCustomButton *)skillBtn
{
    if (!_skillBtn) {
        _skillBtn = [[HXYCustomButton alloc]init];
        
    }
    return _skillBtn;
}

@end
