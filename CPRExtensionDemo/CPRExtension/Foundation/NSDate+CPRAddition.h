//
//  NSDate+CPRAddition.h
//  CPRExtensionDemo
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018 zte's iMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CPRAddition)

@property(nonatomic, assign, readonly) NSInteger year;
@property(nonatomic, assign, readonly) NSInteger month;
@property(nonatomic, assign, readonly) NSInteger day;
@property(nonatomic, assign, readonly) NSInteger hour;
@property(nonatomic, assign, readonly) NSInteger minute;
@property(nonatomic, assign, readonly) NSInteger second;
@property(nonatomic, strong, readonly) NSDateComponents *dateCompoents;

@end
