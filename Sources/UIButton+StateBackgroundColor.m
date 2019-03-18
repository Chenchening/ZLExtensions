//
//  UIButton+StateBackgroundColor.m
//  NJPCentreOfOperation
//
//  Created by jsyl on 2018/7/10.
//  Copyright © 2018年 com.jsyl. All rights reserved.
//

#import "UIButton+StateBackgroundColor.h"

@implementation UIButton (StateBackgroundColor)

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state{
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColor] forState:state];
}

@end
