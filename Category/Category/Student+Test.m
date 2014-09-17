//
//  Student+Test.m
//  Category
//
//  Created by  潘易  on 14-9-17.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Student+Test.h"

//分类的名称
@implementation Student (Test)
- (int) getExtraInt{
    NSLog(@"category test 2方法调用");
    return 13;//返回一个素数
}
@end
