//
//  UIImage+HKEPCircleImage.m
//  HKEPAR_iOS
//
//  Created by GZCP1897 on 17/2/9.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import "UIImage+HKEPCircleImage.h"

@implementation UIImage (HKEPCircleImage)

+ (instancetype)circleImageWithImage:(UIImage *)image HasBorder:(BOOL)hasBorder BorderWidth:(CGFloat)borderWidth BoardColor:(UIColor *)BorderColor{
    
    CGSize imageSize = image.size;
    
    CGSize contextSize;
    if (hasBorder) {
        //有边框
        contextSize = CGSizeMake(imageSize.width + 2 * borderWidth, imageSize.height + 2 * borderWidth);
    }else{
        //无边框
        contextSize = imageSize;
    }
    //创建图片上下文
    UIGraphicsBeginImageContextWithOptions(contextSize, NO, 0);
    //获取图形上下文
//    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //画圆
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, contextSize.width, contextSize.height)];
    
    if (hasBorder) {
        //有边框
        //画边框
        [BorderColor set];
        [path fill];
        //裁剪图片
        path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(borderWidth, borderWidth, imageSize.width, imageSize.height)];
        [path addClip];
        [image drawInRect:CGRectMake(borderWidth, borderWidth, imageSize.width, imageSize.height)];
    }else{
        [path addClip];
        [image drawInRect:CGRectMake(0, 0, contextSize.width, contextSize.height)];
    }
    
    //取出整个图片上下文的图片
    UIImage *iconImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return iconImage;
}
@end
