//
//  drawCurve.m
//  textAll
//
//  Created by 贺东方 on 17/6/1.
//  Copyright © 2017年 hexiaoyi. All rights reserved.
//

#import "drawCurve.h"

@implementation drawCurve

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self drawCurve];
    }
    return self;
}

- (void)drawCurve
{
    
    /*
     y=Asin(wx+u)+K 对就是这么简单，那参数代表的又是什么呢?
     
     A ：振幅
     w ：角速度 w = 2PI/T T:周期
     u ：初相
     K ：y 轴偏移
     */
    
        
        CGFloat A = 20;
        
        CGFloat K = 100;
        
        CGFloat u = 120;
        
        CGFloat w = M_PI/120;
        
    CAShapeLayer *waveLayer = [[CAShapeLayer alloc]init];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, 0, 0);
    
    CGFloat y = 0.0f;
    
    for (float x = 0.f; x <= self.frame.size.width; x++) {
        y = A * sin(w*x + u) + K;
        CGPathAddLineToPoint(path, nil, x, y);
        x++;
    }
    
    CGPathAddLineToPoint(path, nil, self.frame.size.width, self.frame.size.height);
    CGPathAddLineToPoint(path, nil, 0, self.frame.size.height);
    CGPathCloseSubpath(path);
    waveLayer.path = path;
    CGPathRelease(path);
    [self.layer addSublayer:waveLayer];
}

- (void)layoutSubviews
{
    [self drawCurve];
}


@end
