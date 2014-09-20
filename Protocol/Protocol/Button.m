//
//  Button.m
//  Protocol
//
//  Created by  潘易  on 14-9-17.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Button.h"

@implementation Button

- (void) clickButton{
    if([_delegate respondsToSelector:@selector(onClick:)]){//判断是否实现了onClick方法
        [_delegate onClick:self];
    }
}

- (void) dealloc{
    [_delegate release];
    [super dealloc];
}
@end
