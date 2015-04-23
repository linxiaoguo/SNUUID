//
//  SNUUID.h
//  SNEvideo
//
//  Created by 林小果 on 15/4/22.
//  Copyright (c) 2015年 林小果. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNUUID : NSObject

//此uuid保证每1台设备唯一且相同，即使app删除再重装
+ (NSString *)uuid;

@end
