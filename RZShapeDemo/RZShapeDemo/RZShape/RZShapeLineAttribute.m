//
//  RZShapeLineAttribute.m
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import "RZShapeLineAttribute.h"

#define rz_weak_self __weak typeof(self) weakSelf = self
@interface RZShapeLineAttribute ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;
@property (nonatomic, strong) UIBezierPath *bezierPath;

@end

@implementation RZShapeLineAttribute

- (instancetype)init {
    if (self = [super init]) {
        _bezierPath = [UIBezierPath bezierPath];
        
        _shapeLayer = [[CAShapeLayer alloc]init];
        _shapeLayer.path = _bezierPath.CGPath;
        _shapeLayer.fillColor = nil;// 默认不需要填充色
    }
    return self;
}

- (CAShapeLayer *)rz_shapeLayer {
    _shapeLayer.path = _bezierPath.CGPath;
    return _shapeLayer;
}

- (RZShapeLineAttribute *(^)(NSArray<NSValue *> *paths))lines {
    rz_weak_self;
    return ^RZShapeLineAttribute *(NSArray<NSValue *> *paths) {
        [paths enumerateObjectsUsingBlock:^(NSValue * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            CGPoint point = obj.CGPointValue;
            if (idx == 0) {
                [weakSelf.bezierPath moveToPoint:point];
            } else {
                [weakSelf.bezierPath addLineToPoint:point];
            }
        }];
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(UIColor *color))lineColor {
    rz_weak_self;
    return ^RZShapeLineAttribute *(UIColor *color) {
        weakSelf.shapeLayer.strokeColor = color.CGColor;
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(CGFloat width))lineWidth {
    rz_weak_self;
    return ^RZShapeLineAttribute *(CGFloat width) {
        weakSelf.shapeLayer.lineWidth = width;
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(UIColor *color))fillColor {
    rz_weak_self;
    return ^RZShapeLineAttribute *(UIColor *color) {
        weakSelf.shapeLayer.fillColor = color.CGColor;
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(RZLinePointStyle style))lineCapStyle {
    rz_weak_self;
    return ^RZShapeLineAttribute *(RZLinePointStyle style) {
        if (style == RZLinePointStyleDefaule) {
            weakSelf.shapeLayer.lineCap = @"butt";
        } else if (style == RZLinePointStyleValue1) {
            weakSelf.shapeLayer.lineCap = @"round";
        } else if (style == RZLinePointStyleValue2) {
            weakSelf.shapeLayer.lineCap = @"square";
        }
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(RZLinePointStyle style))lineJoinStyle {
    rz_weak_self;
    return ^RZShapeLineAttribute *(RZLinePointStyle style) {
        if (style == RZLinePointStyleDefaule) {
            weakSelf.shapeLayer.lineJoin = @"miter";
        } else if (style == RZLinePointStyleValue1) {
            weakSelf.shapeLayer.lineJoin = @"round";
        } else if (style == RZLinePointStyleValue2) {
            weakSelf.shapeLayer.lineJoin = @"bevel";
        }
        return weakSelf;
    };
}

- (RZShapeLineAttribute *(^)(CGFloat miter))miterLimit {
    rz_weak_self;
    return ^RZShapeLineAttribute *(CGFloat miter) {
        weakSelf.shapeLayer.miterLimit = miter;
        return weakSelf;
    };
}

- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}
@end
