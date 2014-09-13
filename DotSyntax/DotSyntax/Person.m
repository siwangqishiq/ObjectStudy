//
//  Person.m
//  DotSyntax
//
//  Created by  潘易  on 14-9-13.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setAge:(int)age
{
    self->_age = age;
}

- (int)getAge
{
    return self->_age;
}
@end
