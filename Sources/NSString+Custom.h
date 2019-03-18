//
//  NSString+Custom.h
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/12/27.
//  Copyright © 2018 com.jsyl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Custom)
// 中文转码
- (NSString *)chineseTransCoding ;
/// 手机号码
- (BOOL)isValidPhoneNumber;

// 不能为11位纯数字
- (BOOL)isValidElevenNumber;
@end

NS_ASSUME_NONNULL_END
