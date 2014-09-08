//
//  Calculate.m
//  FirstObjectCPro
//
//  Created by  潘易  on 14-9-8.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate 
- (int) num1{
    return self->num1;
}
- (int) num2{
    return self->num2;
}

- (void) setNum1:(int)num1{
    self->num1 = num1;
}
- (void) setNum2:(int)num2{
    self->num2 = num2;
}
- (void) setNum1:(int)num1 AndNum2:(int)num2{
    self->num1 = num1;
    self->num2 = num2;
}
- (int) add:(int)op1 :(int)op2{
    NSLog(@"%d + %d = %d",op1,op2,op1+op2);
    return op1+op2;
}
@end
