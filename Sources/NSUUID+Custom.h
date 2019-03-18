//
//  NSUUID+Custom.h
//  NJPCentreOfOperation
//
//  Created by administratorGuo on 2019/1/3.
//  Copyright © 2019 com.jsyl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *const key_chain_service;
static NSString *const key_chain_account;

@interface NSUUID (Custom)

+ (NSString *)sharedUUIDString ;

@end

NS_ASSUME_NONNULL_END
