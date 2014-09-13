//
//  main.m
//  DotSyntax
//
//  Created by  潘易  on 14-9-13.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Person *person = [[Person alloc] init];
        
        [person setAge:100];
        NSLog(@"person age is %d",[person getAge]);
        
        person.age=10;
        
        [person setAge:13];
        
        NSLog(@"person age is %d",[person getAge]);
        
        [person release];
        
        Student *pStu =[[Student alloc] initAge:13 No:17];
        NSLog(@"Student age is %d and number is %d",[pStu getAge],[pStu getNo]);
        [pStu release];//释放内存
        
        
        Student *pStu2 = [[Student alloc] init];
        NSLog(@"%@",pStu2);
        NSLog(@"%@",pStu);
        [pStu2 release];
    }
    return 0;
}

