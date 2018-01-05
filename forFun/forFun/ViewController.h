//
//  ViewController.h
//  forFun
//
//  Created by panyantao on 15/10/26.
//  Copyright © 2015年 hwamei. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const HJWNoticeNSString;//前面声明的时候要显示一个extern的关键字，这是是在告诉编译器，在全局变量表中有一个HJWNoticeNSString的符号，编译器无需查看定义，即允许代码使用此常量，当链接成二进制之后，肯定能找到该常量。在该声明文件中声明后，需要在实现文件中定义 NSString *const HJWNoticeNSString = @"HJWNoticeNSString";这样来定义。只能定义一次。


@interface ViewController : UIViewController


@end

