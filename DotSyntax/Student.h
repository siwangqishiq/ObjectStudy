//
//  Student.h
//  DotSyntax
//
//  Created by  潘易  on 14-9-13.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    int _age;
    int _no;
}

- (id) initAge:(int)age No:(int)no;

- (void) setNo:no;
- (void) setAge:age;

- (int) getNo;
- (int) getAge;

- (NSString *) description;

@end
