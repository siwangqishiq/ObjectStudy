//
//  ButtonListener.m
//  Protocol
//
//  Created by  潘易  on 14-9-19.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "ButtonListener.h"
#import "Button.h"

@implementation ButtonListener
- (void)onClick:(Button *)btn{
    NSLog(@"%@被点击了",btn);
}
@end
