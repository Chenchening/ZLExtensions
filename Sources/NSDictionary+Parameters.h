//
//  NSDictionary+Parameters.h
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/12/13.
//  Copyright © 2018 com.jsyl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Parameters)

- (NSDictionary *)toNJPParameters ;

- (NSString *)toJsonString ;

@end

NS_ASSUME_NONNULL_END
