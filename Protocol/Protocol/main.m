//
//  main.m
//  Protocol
//
//  Created by  潘易  on 14-9-17.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//
// Protocol 申明方法 任何类都可以实现 相当于JAVA的接口interface

#import <Foundation/Foundation.h>
#import "Button.h"
#import "ButtonListener.h"
#import "MyListener.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Button *btn = [[[Button alloc] init] autorelease];
        ButtonListener *pListener = [[[ButtonListener alloc]init]autorelease];
        
        [btn setDelegate:pListener];
        
        [btn clickButton];
        
        Button *pBtn2 = [[[Button alloc]init]autorelease];
        MyListener *pMyLis = [[[MyListener alloc]init]autorelease];
        [pBtn2 setDelegate:pMyLis];
        [pBtn2 clickButton];
    }
    return 0;
}

