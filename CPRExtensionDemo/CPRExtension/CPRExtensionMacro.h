//
//  CPRExtensionMacro.h
//  CPRExtensionDemo
//
//  Created by zte's iMac on 2018/4/27.
//  Copyright © 2018年 zte's iMac. All rights reserved.
//

#ifndef CPRExtensionMacro_h
#define CPRExtensionMacro_h

// 弱引用
#define CPRWeakSelf                 __weak typeof(self) weakSelf = self;
// 强引用
#define CPRStrongSelf(weakSelf)     __strong typeof(weakself) strongSelf = (weakSelf);


#endif /* CPRExtensionMacro_h */
