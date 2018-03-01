//
//  CAShapeLayer+RZShape.h
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "RZShape.h"

@interface CAShapeLayer (RZShape)

+ (NSArray <CAShapeLayer *> *)rz_shapeConfer:(void(^)(RZShape *shape))shape;

@end
