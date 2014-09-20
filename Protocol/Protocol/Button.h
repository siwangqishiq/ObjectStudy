//
//  Button.h
//  Protocol
//
//  Created by  潘易  on 14-9-17.
//  Copyright (c) 2014年 xinlan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Button;
//<>代表实现某个协议  <NSObject>最根本的协议
@protocol ButtonDelegate <NSObject>
- (void) onClick:(Button *)btn;//点击事件接口
@end

@interface Button : NSObject
@property (nonatomic,retain) id<ButtonDelegate> delegate;//按钮监听器 遵守ButtonDelegate协议

- (void) clickButton;
@end

