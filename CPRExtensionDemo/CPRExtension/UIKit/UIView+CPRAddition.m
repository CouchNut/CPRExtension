//
//  UIView+CPRAddition.m
//  CPRExtensionDemo
//
//  Created by zte's iMac on 2018/4/27.
//  Copyright © 2018年 zte's iMac. All rights reserved.
//

#import "UIView+CPRAddition.h"

@implementation UIView (CPRAddition)

- (void)setOriginY:(CGFloat)originY {
    CGRect frame =  self.frame;
    frame.origin.y = originY;
    self.frame = frame;
}

- (CGFloat)originY {
    return self.frame.origin.y;
}

- (void)setOriginX:(CGFloat)originX {
    CGRect frame =  self.frame;
    frame.origin.x = originX;
    self.frame = frame;
}

- (CGFloat)originX {
    return self.frame.origin.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)cpr_removeAllSubViews {
    while (self.subviews.count != 0) {
        [self.subviews.lastObject removeFromSuperview];
    }
}

- (void)cpr_setCornerRadius:(CGFloat)radius {
    [self cpr_setCornerRadius:radius boderColor:nil borderWidth:0.0f];
}

- (void)cpr_setBoderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth {
    [self cpr_setCornerRadius:0 boderColor:color borderWidth:borderWidth];
}

- (void)cpr_setCornerRadius:(CGFloat)radius boderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth {
    CGRect frame = CGRectMake(0, 0, self.width, self.height);
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = frame;
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = frame;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.strokeColor = color.CGColor;
    shapeLayer.lineWidth = borderWidth;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:radius];
    shapeLayer.path = path.CGPath;
    maskLayer.path = path.CGPath;
    
    [self.layer insertSublayer:shapeLayer atIndex:0];
    [self.layer setMask:maskLayer];
}

@end
