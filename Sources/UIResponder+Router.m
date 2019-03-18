//
//  UIResponder+Router.m
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/5/15.
//  Copyright © 2018年 com.jsyl. All rights reserved.
//

#import "UIResponder+Router.h"

@implementation UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(id)userInfo
{
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

- (NSInvocation *)createInvocationWithSelector:(SEL)sel{
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:sel];
    if (signature == nil) {
        return nil;
    }
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    invocation.selector = sel;
    return invocation;
}

@end
