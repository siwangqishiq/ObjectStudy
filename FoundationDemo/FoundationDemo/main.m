//
//  main.m
//  FoundationDemo
//
//  Created by  潘易  on 14-9-21.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>

void testNSRange(){
    NSRange range = NSRangeFromString(@"{10,13}");
    int length =range.length;
    int location = range.location;
    
    NSLog(@"location----> %i    length ----->%i",location,length);
    
    NSString *str = NSStringFromRange(range);
    NSLog(@"%@",str);
    
    NSRange range2={13,1};
    NSLog(@"%@",NSStringFromRange(range2));
    
    NSRect s = NSMakeRect(10, 20, 100, 100);
    NSLog(@"%@",NSStringFromRect(s));
    
    NSPoint p_point = NSMakePoint(13, 14);
    p_point.x=11;
    NSString *s1 = NSStringFromPoint(p_point);
    NSLog(@"%@",s1);
    
}

void NSArrayTest(){
    //NSArray *array = [[NSArray alloc]init];
    NSArray *p_array= [NSArray arrayWithObjects:@"123", nil];
    NSUInteger count =[p_array count];//获取list元素个数
    
//    NSArray arrayWithArray:<#(NSArray *)#>
    
}

void stringCreate(){
    //NSString *str1 = @"A string 一个String";
}

//常用类
void testClass(){
}

void changeString(NSString **str, NSString *newString){
    (*str) = newString;
}

void swipeNumber(int *a,int *b)
{
    int temp;
    temp = (*a);
    (*a) = (*b);
    (*b) = temp;
}

//字符串的导出
void stringExport(){
    NSString *content=@"你好 世界 ！";
    NSString *path=@"/Users/panyi/Desktop/test.txt";
    
    NSError *error=nil;
    [content writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if(error!=nil){
        NSLog(@"导出失败:%@",error);
    }else{
        NSLog(@"导出成功!");
    }
    
//    [@"1234567890" ]
    
}

// 可变字符串
void testNSMutableString(){
    //Mutable 可变字符串
    NSMutableString *s1=[[NSMutableString alloc] initWithCapacity:10];//预先分配10个字符的存贮空间
    
    [s1 setString:@"1234"];//设置字符串内容
    NSLog(@"%@",s1);
    //添加字符串
    [s1 appendString:@"567"];
    NSLog(@"%@",s1);
    [s1 appendFormat:@"%i and height is %.2f",10,10.02];//拼接字符串
    NSLog(@"%@",s1);
    
    //替换字符串
    NSRange range1 = [s1 rangeOfString:@"is"];
    [s1 replaceCharactersInRange:range1 withString:@"are"];
    NSLog(@"%@",s1);
    
    //插入字符串
    [s1 insertString:@"fuck" atIndex:2];
    NSLog(@"%@",s1);
    
    //删除字符串
    NSRange range2 = [s1 rangeOfString:@"are"];
    [s1 deleteCharactersInRange:range2];
    NSLog(@"%@",s1);
    
    [s1 release];
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //testNSRange();
        
        stringCreate();
        
        NSString *s = @"abcd 呵呵";
        NSLog(@"改变之前--->%@",s);
        changeString(&s,@"你好 世界");
        NSLog(@"字符串改变之后--->%@",s);
        
        int a =13;
        int b=14;
        NSLog(@"改变之前  a = %i, b=%i",a,b);
        swipeNumber(&a, &b);
        NSLog(@"改变之后  a = %i, b=%i",a,b);
        
        stringExport();
        
        //TODO NSString类  大小写切换
        //NSString *s1=@"呵呵 我去洗澡了";
        NSLog(@"%@",[@"guangdong" uppercaseString]);// s1.length
        NSLog(@"%@",[@"GuangDong" lowercaseString]);
        NSLog(@"%@",[@"guaNGGGgDong" capitalizedString]);
        
        //比较字符串
        NSString *compare=@"Abc";
        NSLog(@"%i",[compare isEqualToString:@"Abc"]);
        
        NSString *ss=@"1,2,3,4,5";
        
        NSArray *array = [ss componentsSeparatedByString:@","];
        NSLog(@"%@",array);
        
        NSString *sd = @"/1111dsadsasa";
        NSLog(@"%i",[sd isAbsolutePath]);
//        [ss ]
        NSRange range =NSMakeRange(3, 3);
        NSString *ret = [ss substringWithRange:range];
        
        //
        testNSMutableString();
        
        NSArrayTest();
    }
    return 0;
}
