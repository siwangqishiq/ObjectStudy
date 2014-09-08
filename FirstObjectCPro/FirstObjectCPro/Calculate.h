//
//  Calculate.h
//  FirstObjectCPro
//
//  Created by  潘易  on 14-9-8.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject{
    int num1;
    int num2;
}
- (int) num1;
- (int) num2;

- (void) setNum1:(int)num1;
- (void) setNum2:(int)num2;
- (void) setNum1:(int)num1 AndNum2:(int)num2;
- (int) add:(int)op1 :(int)op2;


@end
