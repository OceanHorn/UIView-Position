//
//  OvalView.m
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import "OvalView.h"
#import "UIView+Position.h"

#define kPadding 15.0f

@implementation OvalView

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
    
    [self drawOvalPath];
}

- (void)drawOvalPath {
    CGRect rect = CGRectMake( 0 + kPadding, 0 + kPadding, self.width -  2 * kPadding, self.height - 2 * kPadding);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    
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
