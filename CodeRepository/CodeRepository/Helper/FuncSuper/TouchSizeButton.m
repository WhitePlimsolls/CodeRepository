//
//  TouchSizeButton.m
//  CodeRepository
//
//  Created by GZCP1897 on 2017/10/27.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import "TouchSizeButton.h"

@implementation TouchSizeButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
{
    CGRect bounds = self.bounds;
    //若原热区小于44x44，则放大热区，否则保持原大小不变
    CGFloat widthDelta = MAX(self.minTouchSize.width, 44.0);
    widthDelta = MAX(widthDelta - bounds.size.width, 0);
    CGFloat heightDelta = MAX(self.minTouchSize.height, 44.0);
    heightDelta = MAX(heightDelta - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

@end
