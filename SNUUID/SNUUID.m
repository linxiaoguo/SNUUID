//
//  SNUUID.m
//  SNEvideo
//
//  Created by 林小果 on 15/4/22.
//  Copyright (c) 2015年 林小果. All rights reserved.
//

#import "SNUUID.h"
#import "SNKeychain.h"
#import <MediaPlayer/MediaPlayer.h>

NSString * const KEY_UUID_KEY = @"com.sn.liveye.uuid";

static NSString *s_uuid = @"";

@implementation SNUUID

+ (NSString *)uuid
{
    if (s_uuid == nil || [s_uuid length] == 0)
    {
        //读取keychain存储的uuid
        s_uuid = [SNKeychain load:KEY_UUID_KEY];
        if (s_uuid == nil || [s_uuid length] == 0)
        {//读取系统uuid，因keychain无uuid
            UIDevice *device = [UIDevice currentDevice];
            s_uuid =  device.identifierForVendor.UUIDString;
            
            //将uuid保存到keychain
            [SNKeychain save:KEY_UUID_KEY data:s_uuid];
        }
    }
    return s_uuid;
}
@end
