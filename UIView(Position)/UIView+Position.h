//
//  UIView+Position.h
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Position) 

@property (nonatomic, assign, readonly) CGFloat width;

@property (nonatomic, assign, readonly) CGFloat height;

@property (nonatomic, assign, readonly) CGFloat centerX;

@property (nonatomic, assign, readonly) CGFloat centerY;

@property (nonatomic, assign, readonly) CGPoint viewCenter;

@property (nonatomic, assign, readonly) CGPoint topLeft;

@property (nonatomic, assign, readonly) CGPoint topRight;

@property (nonatomic, assign, readonly) CGPoint bottomLeft;

@property (nonatomic, assign, readonly) CGPoint bottomRight;

@end
