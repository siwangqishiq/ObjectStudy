//
//  Person.h
//  DotSyntax
//
//  Created by  潘易  on 14-9-13.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    int _age;
}

- (void) setAge:(int)age;
- (int) getAge;

@end
