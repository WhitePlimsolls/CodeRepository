//
//  UIImage+HKEPCircleImage.h
//  HKEPAR_iOS
//
//  Created by GZCP1897 on 17/2/9.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HKEPCircleImage)
+ (instancetype)circleImageWithImage:(UIImage *)image HasBorder:(BOOL)hasBorder BorderWidth:(CGFloat)width BoardColor:(UIColor *)color;

@end
