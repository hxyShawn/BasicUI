//
//  HXYMyTableViewCell.m
//  个人界面
//
//  Created by 贺东方 on 17/5/27.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "HXYMyTableViewCell.h"
#import <Masonry.h>
#import <TTTAttributedLabel.h>
@interface HXYMyTableViewCell()

@property (nonatomic, strong) UIImageView *imgv;
@property (nonatomic, strong) TTTAttributedLabel *textLbl;
@property (nonatomic, strong) UIImageView *iconImageView;

@end

@implementation HXYMyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.imgv];
        [self.contentView addSubview:self.textLbl];
        [self.contentView addSubview:self.iconImageView];
        [self setUp];
    }
    
    return self;
}


- (void)setUp
{
    [self.imgv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(8);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.top.equalTo(self.contentView.mas_top).offset(4);
    }];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView.mas_right).offset(-8);
        make.size.mas_equalTo(CGSizeMake(20, 30));
        make.top.equalTo(self.contentView.mas_top).offset(4);
    }];
    
    [self.textLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.imgv.mas_right).offset(4);
        make.top.equalTo(self.contentView.mas_top).offset(4);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-4);
        make.right.mas_equalTo(self.iconImageView.mas_left).offset(4);
    }];

}

- (UIImageView *)imgv
{
    if (!_imgv) {
        _imgv = [[UIImageView alloc]init];
        _imgv.backgroundColor = [UIColor redColor];
    }
    return _imgv;
}

- (TTTAttributedLabel *)textLbl
{
    if (!_textLbl) {
        _textLbl = [[TTTAttributedLabel alloc]initWithFrame:CGRectZero];;
        
    }
    return _textLbl;
}
- (UIImageView *)iconImageView
{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.backgroundColor = [UIColor redColor];
    }
    return _iconImageView;
}
@end
