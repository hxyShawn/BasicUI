//
//  HXYMyInfoView.m
//  textAll
//
//  Created by 贺东方 on 17/6/1.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "HXYMyInfoView.h"
#import "HXYCustomButton.h"
@interface HXYMyInfoView()

@property (nonatomic, strong) UIView *topView;
@property (nonatomic, strong) UIView *bottomView;
@property (nonatomic, strong) UIView *avatarView;
@property (nonatomic, strong) HXYCustomButton *followBtn;
@property (nonatomic, strong) HXYCustomButton *fansBtn;
@property (nonatomic, strong) HXYCustomButton *skillBtn;

@end
@implementation HXYMyInfoView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.topView];
        [self addSubview:self.bottomView];
        [self addSubview:self.avatarView];
        [self addSubview:self.followBtn];
        [self addSubview:self.fansBtn];
        [self addSubview:self.skillBtn];
    }
    return self;
}

#pragma mark - private
-(void)updateConstraints
{
    [super updateConstraints];
}

- (void)confUI
{
    
}

#pragma mark - public


#pragma mark - delegate


#pragma mark - getter&setter
- (UIView *)topView
{
    if (!_topView) {
        _topView = [[UIView alloc]init];
        UIImage *image = [UIImage imageWithContentsOfFile:@"my_info_top"];
        _topView.contentMode = UIViewContentModeScaleAspectFill;
        _topView.layer.contents = (__bridge id)image.CGImage;
    }
    return _topView;
}
//TODO: 改成imageView就够了, 高度是这个view的高度2/5
- (UIView *)bottomView
{
    if (!_bottomView) {
        _bottomView = [[UIView alloc]init];
        UIImage *image = [UIImage imageWithContentsOfFile:@"my_info_bottom"];
        _bottomView.contentMode = UIViewContentModeScaleAspectFill;
        _bottomView.layer.contents = (__bridge id)image.CGImage;
    }
    return _bottomView;
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
