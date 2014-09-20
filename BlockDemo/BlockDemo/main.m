//
//  main.m
//  BlockDemo
//
//  Created by  潘易  on 14-9-20.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//
//  封装一段代码Block
//  回调

#import <Foundation/Foundation.h>
#import "Button.h"

void test(){
    //Block代码段 接受两个int 类型的参数
    int (^Add)(int ,int) = ^(int a,int b){
        return a+b;
    };
    
    int ret = Add(10,11);
    
    NSLog(@"%i",ret);
}


void test2(){
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //TODO
        //Button *pBtn = [[[Button alloc]init]autorelease];
        
        int result = ^(int a){return a*a;}(11);//block代码块
        
        NSLog(@"result = %i",result);
        
        //Block Pointer
        int (^square)(int);
        
        square = ^(int a){return  a*a;};
        int ret = square(13);
        NSLog(@"square--->%i",ret);
        
        
    }
    return 0;
}

