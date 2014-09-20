//
//  MyListener.m
//  Protocol
//
//  Created by  潘易  on 14-9-20.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "MyListener.h"
#import "Button.h"

@implementation MyListener
- (void) onClick:(Button *)btn{
    NSLog(@"Btton --> %@ 被点击",btn);
}
@end
