//
//  ViewController.m
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import "ViewController.h"
#import "UIView+RZShape.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc]initWithFrame:(CGRect){0,0, 400, 400}];
    [self.view addSubview:view];
//    //线条颜色
//    UIColor *color = [UIColor orangeColor];
//    [color set];
//    UIBezierPath *path;
//    //创建path
//    path = [UIBezierPath bezierPath];
//    //设置线宽
//    path.lineWidth = 20;
//    //线条拐角
////    path.lineCapStyle = kCGLineCapRound;
//    //终点处理
////    path.lineJoinStyle = kCGLineJoinRound;
//    [path moveToPoint:(CGPoint){100,100}];
//    [path addLineToPoint:(CGPoint){200,100}];
//    [path addLineToPoint:(CGPoint){250,150}];
//    [path addLineToPoint:(CGPoint){200,200}];
//    [path addLineToPoint:(CGPoint){100,200}];
//    [path addLineToPoint:(CGPoint){50,150}];
//
//    [path closePath];
//    //根据坐标点连线
//    [path stroke];
//    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
//    layer.path = path.CGPath;
//    layer.fillColor = [UIColor clearColor].CGColor;
//    layer.strokeColor = color.CGColor;
//    layer.lineCap = @"round";
//    layer.lineJoin = @"round";
//    layer.lineWidth = 10;
//    layer.miterLimit = 5;
//    [view.layer addSublayer:layer];
//
//
    UIColor *color = [UIColor orangeColor];
    NSMutableArray *array = [NSMutableArray new];
    [array addObject:@(CGPointMake(100,100))];
    [array addObject:@(CGPointMake(200,100))];
    [array addObject:@(CGPointMake(250,110))];
    [array addObject:@(CGPointMake(200,120))];
    [array addObject:@(CGPointMake(100,120))];
    [view rz_shapeConfer:^(RZShape *shape) {
        shape.line.lineColor(color).lines(array.copy).lineWidth(13).lineCapStyle(RZLinePointStyleValue1).lineJoinStyle(RZLinePointStyleValue1);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
