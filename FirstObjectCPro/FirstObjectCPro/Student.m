//
//  Student.m
//  FirstObjectCPro
//
//  Created by  潘易  on 14-9-8.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//
#import "Student.h"
@implementation Student
- (int)getAge{
    return age;
}

- (void)setAge:(int)age{
    self->age = age;//给age赋值
    
    NSLog(@"setAge is %d",self->age);
}

- (void)setAge:(int)age Number:(int)no{
    self->number = no;
    self->age = age;
    
    NSLog(@"setAge is %d And Number is %d",self->age,self->number);
}
@end
