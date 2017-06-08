//
//  AlterableHeightCellTableViewCell.m
//  textAll
//
//  Created by liangqi on 17/6/8.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "AlterableHeightCellTableViewCell.h"
#import <Masonry.h>
@interface AlterableHeightCellTableViewCell()
@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;
@end

@implementation AlterableHeightCellTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}
- (void)initUI
{
    CGFloat padding = 8;
    CGFloat space = 4;
    [self.contentView addSubview:self.icon];
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.contentLabel];
    [self.icon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(self.contentView).offset(padding);
        make.size.mas_offset(CGSizeMake(40, 40));
        make.top.mas_offset(self.contentLabel).offset(space);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(self.contentView).offset(padding);
        make.right.mas_offset(self.contentView).offset(-padding);
        make.top.mas_offset(self.icon.mas_bottom).offset(space);
        make.height.mas_offset(20);
    }];
//    self.contentLabel.preferredMaxLayoutWidth
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(self.contentView).offset(padding);
        make.right.mas_offset(self.contentView).offset(-padding);
        make.top.mas_offset(self.titleLabel.mas_bottom).offset(space);
        make.bottom.mas_offset(self.contentView.mas_bottom).offset(-space);
    }];
}

- (void)setData:(NSDictionary *)data
{
    _data = data;
    
}
#pragma mark - getter&setter
- (UIImageView *)icon
{
    if (!_icon) {
        _icon = [[UIImageView alloc]init];
    }
    return _icon;
}
- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
    }
    return _titleLabel;
}
- (UILabel *)contentLabel
{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]init];
    }
    return _contentLabel;
}
@end
