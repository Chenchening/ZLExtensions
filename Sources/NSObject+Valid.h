//
//  NSObject+Valid.h
//  NJPCentreOfOperation
//
//  Created by administratorGuo on 2019/1/3.
//  Copyright © 2019 com.jsyl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Valid)

- (BOOL)isValidString;

- (BOOL)isValidArray;

- (BOOL)isValidDict;

@end

NS_ASSUME_NONNULL_END
