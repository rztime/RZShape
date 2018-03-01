//
//  UIView+RZShape.h
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RZShape.h"

@interface UIView (RZShape)

/**
 通过index移除某一个Shape
 */
- (void)removeShapeAtIndex:(NSInteger)index;
/**
 移除所有shape
 */
- (void)removeAllShape;

/**
 创建shpe
 */
- (void)rz_shapeConfer:(void(^)(RZShape *shape))shape;

@end
