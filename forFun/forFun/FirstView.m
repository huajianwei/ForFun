//
//  FirstView.m
//  forFun
//
//  Created by panyantao on 15/10/27.
//  Copyright © 2015年 hwamei. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext(); //获取上下文
    
    
    //画一个直线 从20 20 到 200 20 。
    
    CGContextMoveToPoint(ctx, 20, 40);
    CGContextAddLineToPoint(ctx, 100, 40);
    
    
    //画一个三角形
    
    
    CGContextMoveToPoint(ctx, 60, 60);
    CGContextAddLineToPoint(ctx, 90, 120);
    
    CGContextAddLineToPoint(ctx, 30  , 120);
    CGContextAddLineToPoint(ctx, 60, 60);

    //画一个正方形
    
    CGContextMoveToPoint(ctx,40, 140);
    CGContextAddLineToPoint(ctx, 100, 140);
    CGContextAddLineToPoint(ctx, 100, 200);
    CGContextAddLineToPoint(ctx, 40, 200);
    CGContextAddLineToPoint(ctx, 40, 140);
    
    
    //画一个曲线

    
    NSMutableArray *number = [[NSMutableArray alloc]init];
    
    CGContextMoveToPoint(ctx,40, 250);

    
    for (int i =0; i<80; i++) {
        [number addObject: @(i)];
        CGContextAddLineToPoint(ctx, 40 + 4*i  , 240+ 10* sin(((40+i))*M_1_PI));
    };
    CGContextStrokePath(ctx);

}


@end
