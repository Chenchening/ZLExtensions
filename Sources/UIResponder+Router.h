//
//  UIResponder+Router.h
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/5/15.
//  Copyright © 2018年 com.jsyl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(id)userInfo;

- (NSInvocation *)createInvocationWithSelector:(SEL)sel;

@end
