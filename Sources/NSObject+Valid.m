//
//  NSObject+Valid.m
//  NJPCentreOfOperation
//
//  Created by administratorGuo on 2019/1/3.
//  Copyright © 2019 com.jsyl. All rights reserved.
//

#import "NSObject+Valid.h"

@implementation NSObject (Valid)

- (BOOL)isValidString {
    return
    ![self isKindOfClass:[NSNull class]] &&
    self != nil &&
    [self isKindOfClass:[NSString class]] &&
    [(NSString *)self length] > 0 &&
    ![self isEqual:@"null"] &&
    ![self isEqual:@"(null)"];
}

- (BOOL)isValidArray {
    return ![self isKindOfClass:[NSNull class]] &&
    self != nil &&
    [self isKindOfClass:[NSArray class]] &&
    [(NSArray *)self count] > 0;
}

- (BOOL)isValidDict {
    return ![self isKindOfClass:[NSNull class]] &&
    self != nil &&
    [self isKindOfClass:[NSDictionary class]] &&
    [(NSDictionary *)self allKeys].count > 0;
}

@end
