//
//  RZShape.m
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import "RZShape.h"

@interface RZShape ()

@property (nonatomic, strong) NSMutableArray *shapLayers;

@end

@implementation RZShape

- (NSMutableArray *)shapLayers {
    if (!_shapLayers) {
        _shapLayers = [NSMutableArray new];
    }
    return _shapLayers;
}

- (NSArray<CAShapeLayer *> *)interpret {
    NSMutableArray *shapeLayers = [NSMutableArray new];
    for (id shape in self.shapLayers) {
        if ([shape isKindOfClass:[RZShapeLineAttribute class]]) {
            [shapeLayers addObject:[(RZShapeLineAttribute *)shape rz_shapeLayer]];
            continue;
        }
    }
    return shapeLayers.copy;
}

- (RZShapeLineAttribute *)line {
    RZShapeLineAttribute *line = [[RZShapeLineAttribute alloc]init];
    [self.shapLayers addObject:line];
    return line;
}

@end
