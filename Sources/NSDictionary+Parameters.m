//
//  NSDictionary+Parameters.m
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/12/13.
//  Copyright © 2018 com.jsyl. All rights reserved.
//

#import "NSDictionary+Parameters.h"

@implementation NSDictionary (Parameters)

- (NSDictionary *)toNJPParameters {
    NSString *json = [self toJsonString];
    if (json.length > 0) {
        NSDictionary *para = @{
                               @"jsonParam":json
                               };
        return para;
    }
    else {
        return @{};
    }
}

- (NSString *)toJsonString {
    if (![self isKindOfClass:[NSDictionary class]]) {
        return @"";
    }
    
    NSError *parseError;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&parseError];
    if (parseError) {
        return @"";
    }
    NSString * json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return json;
}

@end
