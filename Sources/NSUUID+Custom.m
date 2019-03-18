//
//  NSUUID+Custom.m
//  NJPCentreOfOperation
//
//  Created by administratorGuo on 2019/1/3.
//  Copyright © 2019 com.jsyl. All rights reserved.
//

#import "NSUUID+Custom.h"
#import "YYKit.h"

/// - keychain/imei
static NSString *const key_chain_service = @"com.jsyl.CentreOfOperation";
static NSString *const key_chain_account = @"KeyChainAccount";


@implementation NSUUID (Custom)

+ (NSString *)sharedUUIDString {
    NSLock *lock = [[NSLock alloc] init];
    [lock lock];
    NSString *sharedUUID = [YYKeychain getPasswordForService:key_chain_service account:key_chain_account];
    if (sharedUUID == nil || sharedUUID.length == 0) {
        sharedUUID = [NSUUID UUID].UUIDString;
        [YYKeychain setPassword:sharedUUID forService:key_chain_service account:key_chain_account];
    }
    [lock unlock];
    return sharedUUID;
}

@end
