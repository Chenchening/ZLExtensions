//
//  TestView.m
//  ForBuild
//
//  Created by 郭子龙 on 2019/3/19.
//  Copyright © 2019 郭子龙. All rights reserved.
//

#import "TestView.h"
#import "Masonry.h"

@interface TestView()

// title
@property (nonatomic, strong) UILabel *titleLabel;


@end

@implementation TestView


- (void)didMoveToWindow {
    [super didMoveToWindow];
    
    [self addSubview:self.titleLabel];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:(CGRectZero)];
        _titleLabel.text = @"这是一条神奇的天路";
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

@end
