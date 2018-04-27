//
//  UIColor+CPRAddition.h
//  CPRExtensionDemo
//
//  Created by zte's iMac on 2018/4/27.
//  Copyright © 2018年 zte's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CPRAddition)
+ (UIColor *)cpr_colorWithHexString:(NSString *)hexStr;
+ (UIColor *)cpr_colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;
@end
