//
//  LineView.m
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import "LineView.h"
#import "UIView+Position.h"

@interface LineView ()

@end

@implementation LineView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [self drawTrianglePath];
}



- (void)drawTrianglePath {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:self.viewCenter];
    [path addLineToPoint:CGPointMake(self.width, 0)];
    
    // 最后的闭合线是可以通过调用closePath方法来自动生成的，也可以调用-addLineToPoint:方法来添加
    //  [path addLineToPoint:CGPointMake(20, 20)];
    
    [path closePath];
    
//    path.lineCapStyle = kCGLineCapButt;
//    path.lineCapStyle = kCGLineCapRound;
    path.lineCapStyle = kCGLineCapSquare;
    
    path.lineJoinStyle = kCGLineJoinMiter;
//    path.lineJoinStyle = kCGLineJoinRound;
//    path.lineJoinStyle = kCGLineJoinBevel;
    
    // 设置线宽
    path.lineWidth = 8;
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    [path stroke];
    // 根据我们设置的各个点连线

}

@end
