//
//  Student.h
//  FirstObjectCPro
//
//  Created by  潘易  on 14-9-8.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Student : NSObject{
    int age;//年龄
    int number;//编号
}

//+代表静态方法
//+ (int)getAge;

//-代表动态方法
- (void)setAge:(int)age;
- (int)getAge;

- (void) setAge:(int)age Number:(int)no;

@end
