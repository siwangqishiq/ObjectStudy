//
//  Student.m
//  DotSyntax
//
//  Created by  潘易  on 14-9-13.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Student.h"

@implementation Student

/**
 *自定义构造函数
 */
- (id) initAge:(int)age No:(int)no{
    self = [super init];
    if(self!=nil)
    {
        _age = age;
        _no = no;
    }
    
    return self;
}

- (void)setNo:(int)no
{
    _no = no;
}

- (void)setAge:(int)age
{
    _age = age;
}

- (int)getNo
{
    return _no;
}

- (int)getAge
{
    return _age;
}

- (NSString *)description{
    NSString *str = [NSString stringWithFormat:@"age is %d and number is %d",
                     self->_age,self->_no];
    return str;
}
@end
