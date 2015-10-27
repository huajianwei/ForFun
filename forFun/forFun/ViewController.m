//
//  ViewController.m
//  forFun
//
//  Created by panyantao on 15/10/26.
//  Copyright © 2015年 hwamei. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSLog(@"hello");
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CALayer *layer = self.view.layer;
    
    NSLog(@"%@",layer);
    
//    UIView *gameView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    UIView *backgroundView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    UIView *role = [[UIView alloc]initWithFrame:CGRectMake(40, 40, 60, 30)];
//    UIView *mapview = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 70)];
//    
//    CALayer *gamelayer = gameView.layer;
//    [gamelayer addSublayer:backgroundView.layer];
//    [gamelayer addSublayer:role.layer];
//    [gamelayer addSublayer:mapview.layer];
//    [gamelayer setNeedsDisplay];
    
    
    
    
    FirstView *myview = [[FirstView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    
    myview.backgroundColor = [UIColor cyanColor];
    
    
    [self.view addSubview:myview];
    
    
//    [self.view addSubview:gameView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
