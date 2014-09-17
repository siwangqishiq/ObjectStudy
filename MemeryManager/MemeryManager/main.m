//
//  main.m
//  MemeryManager
//
//  Created by  潘易  on 14-9-15.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 主函数
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *pStu=[[Student alloc]init];//引用计数器为1
        int count = [pStu retainCount];
        NSLog(@"%d",count);
        [pStu release];//引用计数器为0
        //[pStu release];野指针错误
        //ARC Auto reference Count  自动计数器
        
        [pStu setAge:102];
        pStu = nil;
        [pStu release];//空指针调用
        
        pStu = [[Student alloc]init];
        [pStu retain];
        [pStu release];
        
        Student *p_Student = [[Student alloc]init];
        
        [p_Student autorelease];//加入自动释放池
    }
    
    @autoreleasepool {//创建一个自动释放池
        Student *p2 = [[Student alloc]init];
        
        [p2 autorelease];//放入自动释放池
        
        Student *p3 = [[[Student alloc]init]autorelease];
        p3 = nil;
        
    }
    return 0;
}

