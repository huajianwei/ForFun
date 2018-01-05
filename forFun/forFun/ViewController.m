//
//  ViewController.m
//  forFun
//
//  Created by panyantao on 15/10/26.
//  Copyright © 2015年 hwamei. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"

NSString *const HJWNoticeNSString = @"value";

static const NSTimeInterval KTimeDuring = 2;//这样声明要比#define好，因为编译器会确保常量值不变。

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CALayer *layer = self.view.layer;
    
    NSLog(@"%@",layer);


    FirstView *myview = [[FirstView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];

    myview.backgroundColor = [UIColor cyanColor];

    [self.view addSubview:myview];


    //枚举值的使用
    NSLog(@"%.f",KTimeDuring);

    //使用|操作来组合使用枚举值

    HjwViewAuto anto = HjwViewAutoWidth|HjwViewAutoHeight;
    if (anto & HjwViewAutoHeight) {//使用枚举类型可以设置组合的类型，这里可以使用|&进行判断。简直好用到飞起。。。
        NSLog(@"%ld",anto);
    }
    if (anto & HjwViewAutoNone) { //在这里编译器会提醒不会执行到这里
        NSLog(@"%ld",anto);
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
