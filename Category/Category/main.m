//
//  main.m
//  Category
//
//  Created by  潘易  on 14-9-17.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//
// Category使用  为已经存在的类 添加新的方法

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Student+Test.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // 
        Student *pStu = [[[Student alloc]init]autorelease];
        [pStu test];
        [pStu getExtraInt];
        
        //[[pStu getExtraInt] test];
    }
    return 0;
}

