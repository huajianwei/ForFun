//
//  ViewController.h
//  forFun
//
//  Created by panyantao on 15/10/26.
//  Copyright © 2015年 hwamei. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const HJWNoticeNSString;//前面声明的时候要显示一个extern的关键字，这是是在告诉编译器，在全局变量表中有一个HJWNoticeNSString的符号，编译器无需查看定义，即允许代码使用此常量，当链接成二进制之后，肯定能找到该常量。在该声明文件中声明后，需要在实现文件中定义 NSString *const HJWNoticeNSString = @"HJWNoticeNSString";这样来定义。只能定义一次。

enum animationState:NSUInteger{
    animationEnd,
    animationStarting,
    animationRunning,
};
typedef enum animationState animationState;

typedef enum : NSUInteger {
    HanimationEnd,
    HanimationStarting,
    HanimationRunning,
} HanimationState;
//这两种方式定义枚举类型是等价的。如何处理枚举类型是编译器进行处理的。不过第一种的枚举类型是编译器自己决定的，第二种是确定使用的NSUInteger类型。

typedef enum : NSUInteger {
    HjwViewAutoNone = 0,
    HjwViewAutoFlexibleleft = 1<<0,
    HjwViewAutoWidth = 1<<1,
    HjwViewAutoFlexibleRight = 1<<2,
    HjwViewAutoFlexibleTop = 1<<3,
    HjwViewAutoHeight = 1<<4,
    HjwViewAutoFlexibleBottom = 1<<5,
} HjwViewAuto;//在使用的时候可以用按位或操作符来组合多个选项

@interface ViewController : UIViewController


@end

