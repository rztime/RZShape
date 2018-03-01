//
//  UIView+RZShape.m
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import "UIView+RZShape.h"
#import "CAShapeLayer+RZShape.h"

@implementation UIView (RZShape)

- (void)removeShapeAtIndex:(NSInteger)index {
    if (index < 0 || index > self.layer.sublayers.count) {
        return ;
    }
    [self.layer.sublayers[index] removeFromSuperlayer];
}

- (void)removeAllShape {
    [self.layer.sublayers enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperlayer];
    }];
}


- (void)rz_shapeConfer:(void (^)(RZShape *))shape {
    if (!shape) {
        return;
    }
    [self removeAllShape];
    NSArray<CAShapeLayer *> *cs = [CAShapeLayer rz_shapeConfer:shape];
    [cs enumerateObjectsUsingBlock:^(CAShapeLayer * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.layer addSublayer:obj];
    }];
}


@end
