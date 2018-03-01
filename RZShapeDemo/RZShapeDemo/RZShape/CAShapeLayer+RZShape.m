//
//  CAShapeLayer+RZShape.m
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import "CAShapeLayer+RZShape.h"

@implementation CAShapeLayer (RZShape)

+ (NSArray <CAShapeLayer *> *)rz_shapeConfer:(void(^)(RZShape *shape))shape {
    if (!shape) {
        return [NSArray new];
    }
    RZShape *s = [[RZShape alloc]init];
    shape(s);
    return [s interpret];
}
@end
