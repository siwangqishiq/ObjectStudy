//
//  Student.m
//  MemeryManager
//
//  Created by  潘易  on 14-9-15.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize age=_age;

+ (id) newInstance:(int)newAge{
    Student *pInstance = [[[self alloc]init]autorelease];
    [pInstance setAge:newAge];
    return pInstance;
}

+ (id) newInstance{
    return [[[self alloc]init]autorelease];
}

-(void) dealloc{
    NSLog(@"调用 %@ 的dealloc方法",self);
    [super dealloc];
}
@end
