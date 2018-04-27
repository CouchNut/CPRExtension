//
//  UIColor+CPRAddition.h
//  CPRExtensionDemo
//
//  Created by zte's iMac on 2018/4/27.
//  Copyright © 2018年 zte's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CPRAddition)

/**
 透明度固定为1，以0x开头的十六进制转换成的颜色

 @param hexColor 十六进制数 例如：0x3366ee
 @return 颜色
 */
+ (UIColor *)cpr_colorWithHex:(long)hexColor;

/**
 0x开头的十六进制转换成的颜色,透明度可调整

 @param hexColor 十六进制数 例如：0x3366ee
 @param opacity 透明度 在 0~1之间
 @return 颜色
 */
+ (UIColor *)cpr_colorWithHex:(long)hexColor alpha:(float)opacity;

/**
 iOS中十六进制的颜色（以#开头）转换为UIColor

 @param color 颜色字符串， 例如 "#3366ee" 、 "0x3366ee"
 @return 颜色
 */
+ (UIColor *)cpr_colorWithHexString:(NSString *)color;

@end
