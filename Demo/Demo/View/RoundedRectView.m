//
//  RoundedRectView.m
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import "RoundedRectView.h"
#import "UIView+Position.h"

#define kPadding 15.0f

#define kPaddingMin 5.0f

@implementation RoundedRectView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [self drawRoundedRect];
}

- (void)drawRoundedRect {
    CGRect rect = CGRectMake( 0 + kPadding, 0 + kPadding, self.width -  2 * kPadding, self.height - 2 * kPadding);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:5.0f];
    
    CGRect rectMin = CGRectMake( 0 + kPaddingMin, 0 + kPaddingMin, self.width -  2 * kPaddingMin, self.height - 2 * kPaddingMin);
    UIBezierPath *outPath = [UIBezierPath bezierPathWithRoundedRect:rectMin byRoundingCorners:UIRectCornerTopLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(5.0, 10.0)];
    [path appendPath:outPath];
    
    path.lineWidth = 3.0f;
    path.lineCapStyle = kCGLineCapButt;
    path.lineJoinStyle = kCGLineJoinMiter;
    
    
    
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    [path stroke];
}

@end
