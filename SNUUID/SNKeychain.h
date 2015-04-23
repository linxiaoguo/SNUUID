//
//  SNKeychain.h
//  SNEvideo
//
//  Created by 林小果 on 15/4/22.
//  Copyright (c) 2015年 林小果. All rights reserved.
//

#import <Foundation/Foundation.h>

//永久存储，不会因为app删除而消失的数据
@interface SNKeychain : NSObject


+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;
@end
