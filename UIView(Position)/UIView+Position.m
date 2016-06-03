//
//  UIView+Position.m
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import "UIView+Position.h"
#import <objc/runtime.h>


@implementation UIView (Position)

/*
 OBJC_ASSOCIATION_ASSIGN;            // assign策略
 OBJC_ASSOCIATION_COPY_NONATOMIC;    // copy策略
 OBJC_ASSOCIATION_RETAIN_NONATOMIC;  // retain策略
 
 OBJC_ASSOCIATION_RETAIN;
 OBJC_ASSOCIATION_COPY;
 */

/*
 id object 给哪个对象的属性赋值
 const void *key 属性对应的key
 id value  设置属性值为value
 objc_AssociationPolicy policy  使用的策略，是一个枚举值，和copy，retain，assign是一样的，手机开发一般都选择NONATOMIC
 
 objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy);
 */

/*

 * Sets an associated value for a given object using a given key and association policy.
 *
 * @param object The source object for the association.
 * @param key The key for the association.
 * @param value The value to associate with the key key for object. Pass nil to clear an existing association.
 * @param policy The policy for the association. For possible values, see “Associative Object Behaviors.”
 *
 * @see objc_setAssociatedObject
 * @see objc_removeAssociatedObjects

OBJC_EXPORT void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)

*/

// 定义常量 必须是C语言字符串
static const char *widthKey = "widthKey";
- (void)setWidth:(CGFloat)width {
    
    objc_setAssociatedObject(self, widthKey, @(width), OBJC_ASSOCIATION_ASSIGN);

}
-(CGFloat)width {
    self.width = self.bounds.size.width;
    return [objc_getAssociatedObject(self, widthKey) floatValue];
}

static const char *heightKey = "heightKey";
- (void)setHeight:(CGFloat)height {
    objc_setAssociatedObject(self, heightKey, @(height), OBJC_ASSOCIATION_ASSIGN);
}
-(CGFloat)height {
    self.height = self.bounds.size.height;
    return [objc_getAssociatedObject(self, heightKey) floatValue];
}

static const char *centerXKey = "centerXKey";
- (void)setCenterX:(CGFloat)centerX {
    objc_setAssociatedObject(self, centerXKey, @(centerX), OBJC_ASSOCIATION_ASSIGN);
}
-(CGFloat)centerX {
    self.centerX = self.width / 2.0;
    return [objc_getAssociatedObject(self, centerXKey) floatValue];
}

static const char *centerYKey = "centerYKey";
- (void)setCenterY:(CGFloat)centerY {
    objc_setAssociatedObject(self, centerYKey, @(centerY), OBJC_ASSOCIATION_ASSIGN);
}
-(CGFloat)centerY {
    self.centerY = self.height / 2.0;
    return [objc_getAssociatedObject(self, centerYKey) floatValue];
}

static const char *viewCenterKey = "viewCenterKey";
- (void)setViewCenter:(CGPoint)viewCenter {
    objc_setAssociatedObject(self, viewCenterKey, [NSValue valueWithCGPoint:viewCenter], OBJC_ASSOCIATION_ASSIGN);
}
-(CGPoint)viewCenter {
    self.viewCenter = CGPointMake(self.centerX, self.centerY);
    return [objc_getAssociatedObject(self, viewCenterKey) CGPointValue];
}

static const char *topLeftKey = "topLeftKey";
- (void)setTopLeft:(CGPoint)topLeft {
    objc_setAssociatedObject(self, topLeftKey, [NSValue valueWithCGPoint:topLeft], OBJC_ASSOCIATION_ASSIGN);
}
-(CGPoint)topLeft {
    self.topLeft = CGPointMake(0, 0);
    return [objc_getAssociatedObject(self, topLeftKey) CGPointValue];
}

static const char *topRightKey = "topRightKey";
- (void)setTopRight:(CGPoint)topRight {
    objc_setAssociatedObject(self, topRightKey, [NSValue valueWithCGPoint:topRight], OBJC_ASSOCIATION_ASSIGN);
}
-(CGPoint)topRight {
    self.topRight = CGPointMake(self.width, 0);
    return [objc_getAssociatedObject(self, topRightKey) CGPointValue];
}

static const char *bottomLeftKey = "bottomLeftKey";
- (void)setBottomLeft:(CGPoint)bottomLeft {
    objc_setAssociatedObject(self, bottomLeftKey, [NSValue valueWithCGPoint:bottomLeft], OBJC_ASSOCIATION_ASSIGN);
}
-(CGPoint)bottomLeft {
    self.bottomLeft = CGPointMake(0, self.height);
    return [objc_getAssociatedObject(self, bottomLeftKey) CGPointValue];
}

static const char *bottomRightKey = "bottomRightKey";
- (void)setBottomRight:(CGPoint)bottomRight {
    objc_setAssociatedObject(self, bottomRightKey, [NSValue valueWithCGPoint:bottomRight], OBJC_ASSOCIATION_ASSIGN);
}
-(CGPoint)bottomRight {
    self.bottomRight = CGPointMake(self.width, self.height);
    return [objc_getAssociatedObject(self, bottomRightKey) CGPointValue];
}


@end
