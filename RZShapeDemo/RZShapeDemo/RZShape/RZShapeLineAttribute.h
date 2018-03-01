//
//  RZShapeLineAttribute.h
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//  画线属性集合

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RZLinePointStyle) {
    RZLinePointStyleDefaule = 0,
    RZLinePointStyleValue1  = 1,  // 弧形
    RZLinePointStyleValue2  = 2,  // 端点类型：平的  连接点类型：斜边
};

@protocol RZShapeLineAttributeDelegate <NSObject>
- (CAShapeLayer *)rz_shapeLayer;
@end

@interface RZShapeLineAttribute : NSObject <RZShapeLineAttributeDelegate>

/**
 路径 为CGPoint的数组集合
 */
- (RZShapeLineAttribute *(^)(NSArray<NSValue *> *paths))lines;

/**
 线条颜色
 */
- (RZShapeLineAttribute *(^)(UIColor *color))lineColor;
/**
 线条宽度
 */
- (RZShapeLineAttribute *(^)(CGFloat width))lineWidth;
/**
 填充颜色
 */
- (RZShapeLineAttribute *(^)(UIColor *color))fillColor;

/**
 端点类型
 */
- (RZShapeLineAttribute *(^)(RZLinePointStyle style))lineCapStyle;
/**
 连接点类型
 */
- (RZShapeLineAttribute *(^)(RZLinePointStyle style))lineJoinStyle;
/**
 最大斜接长度
 */
- (RZShapeLineAttribute *(^)(CGFloat miter))miterLimit;
@end
