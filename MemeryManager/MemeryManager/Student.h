//
//  Student.h
//  MemeryManager
//
//  Created by  潘易  on 14-9-15.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;

@interface Student : NSObject{
    int _age;
}
@property int age;
@property int number;

// retain代表  release旧值  retain新值
@property (retain) Book *pBook;//自动管理引用计数器

@property (assign) int weight;//默认实现为assign  标准set 与 get方法

@property (readonly) int sex;//只读属性
@property (readwrite) int sexey;//读写方法
@property (atomic) int atomic;//多线程安全 默认实现 相当于synchronsize关键字 加锁lock
@property (nonatomic) int no_atomic;//非线程安全的  🈲止多线程 😄😢＝＝

@property (nonatomic,getter = isRich,assign) BOOL rich;//指定get方法名称


+ (id) newInstance;
+ (id) newInstance:(int)newAge;

@end


//end
