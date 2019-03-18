//
//  NSDictionary+safe.m
//  掌上业务大厅
//
//  Created by jsyl on 2017/7/26.
//  Copyright © 2017年 com.jsyl. All rights reserved.
//

#import "NSDictionary+safe.h"

@implementation NSDictionary (safe)

- (NSString *)stringForKey:(id)aKey
{
    NSString *value = [self objectForKey:aKey];
    if ([value isEqual:[NSNull null]] || value == nil || value.length == 0) {
        return @"";
    }
    return value;
}
@end
