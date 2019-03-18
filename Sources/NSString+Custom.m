//
//  NSString+Custom.m
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/12/27.
//  Copyright © 2018 com.jsyl. All rights reserved.
//

#import "NSString+Custom.h"

@implementation NSString (Custom)

- (NSString *)chineseTransCoding {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

///验证手机号/^1(3[0-9]|4[5-9]|5[0-35-9]|6[6]|7[0-8]|8[0-9]|9[89])\d{8}$/
- (BOOL)isValidPhoneNumber {
    NSString *regex = [NSString stringWithFormat:@"^1(3[0-9]|4[5-9]|5[0-35-9]|6[6]|7[0-8]|8[0-9]|9[89])\\d{8}$"];
    return [self isValidWithRegex:regex];
}

/// 11位纯数字
- (BOOL)isValidElevenNumber {
    NSString *regex = [NSString stringWithFormat:@"^\\d{11}$"];
    return [self isValidWithRegex:regex];
}

- (BOOL)isValidWithRegex:(NSString *)regex {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

@end
