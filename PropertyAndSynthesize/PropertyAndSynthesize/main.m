//
//  main.m
//  PropertyAndSynthesize
//
//  Created by  潘易  on 14-9-15.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Student *pStu  = [[Student alloc] init];
        
        [pStu setAge:100];
        [pStu setNumber:21];
        [pStu setHeight:1.83f];
        
        NSLog(@"age is %i,number is %i,height is %.2f",
              [pStu age],[pStu number],[pStu height]);
        
        [pStu release];
        
        Teacher *pTeahcer =[[Teacher alloc] init];
        [pTeahcer setAge:27];
        
        [pTeahcer release];
        
    }
    return 0;
}

