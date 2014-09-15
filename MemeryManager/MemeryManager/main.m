//
//  main.m
//  MemeryManager
//
//  Created by  潘易  on 14-9-15.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *pStu=[[Student alloc]init];//引用计数器为1
        int count = [pStu retainCount];
        NSLog(@"%d",count);
        [pStu release];//引用计数器为0
        //[pStu release];野指针错误
        //ARC Auto reference Count  自动计数器
        
    }
    return 0;
}

