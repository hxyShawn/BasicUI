//
//  HXYCustomButton.h
//  manmanda
//
//  Created by liangqi on 17/5/31.
//  Copyright © 2017年 nixinyue. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, HXYCustomButtonDirectionType) {
    HXYCustomButtonDirectionTypeHorizontal,
    HXYCustomButtonDirectionTypeVertical
};
@interface HXYCustomButton : UIButton

/**
 只能用这个初始化,

 @param directionType directionType 横向还是纵向
 @param imageSize imageSize 图片的size,可以不传,不传默认20,20
 @param space 图片按钮之间的间距
 @return 实例
 */
- (instancetype)initWithType:(HXYCustomButtonDirectionType )directionType imageSize:(CGSize)imageSize space:(NSNumber *)space;

@property (nonatomic, assign) HXYCustomButtonDirectionType  buttonDirectionType;

//控件
@property (nonatomic, strong) UIImageView *imgv;
@property (nonatomic, strong) UILabel *label;

/*直接在这里把该设置的设置好*/
- (void)setText:(nullable NSString *)text forState:(UIControlState)state;
- (void)setTextColor:(nullable UIColor *)color forState:(UIControlState)state;
- (void)setImageStr:(nullable NSString *)imageStr forState:(UIControlState)state;

/*想要将图片显示成的size*/
@property (nonatomic, assign) CGSize imageSize;
/** 图片和标签之间的间隙 */
@property(nonatomic, assign) CGFloat space;


@end
