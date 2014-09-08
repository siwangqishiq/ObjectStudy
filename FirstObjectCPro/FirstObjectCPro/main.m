//
//  main.m
//  FirstObjectCPro
//
//  Created by  潘易  on 14-9-8.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#import "Student.h"
#import "Calculate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        NSLog(@"Hello, World!\n你好 世界!");
//        @autoreleasepool {
//
//        }
        
        Student *pStudent = [Student alloc];
        
        pStudent = [pStudent init];
        
        [pStudent setAge:101];
        
        [pStudent release];//释放对象
        
        
        Student *stu = [[Student alloc] init];
        [stu setAge:102];
        [stu release];
        
        Student *pStu = [[Student alloc] init];
        [pStu setAge:12 Number:13];
        
        [pStu release];//free
        //NSLog(@"age=%d",[pStudent getAge]);
        
        Calculate *pCal = [[Calculate alloc] init];
        [pCal add:13 :12];
        [pCal release];
    }
    
    //printf("100 +100  = %d \n",100+100);
//    char c[]="你好 世界";
//    
//    printf("%s \n",c);
//    
//    NSLog(@"Hello World!");
    
    
    
    return 0;
}

