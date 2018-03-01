//
//  RZShape.h
//  RZShapeDemo
//
//  Created by rztime on 2018/3/1.
//  Copyright © 2018年 rztime. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RZShapeLineAttribute.h"

@protocol RZShapeDelegate <NSObject>
- (NSArray <CAShapeLayer *>*)interpret;
@end


@interface RZShape : NSObject <RZShapeDelegate>

- (RZShapeLineAttribute *)line;

@end
