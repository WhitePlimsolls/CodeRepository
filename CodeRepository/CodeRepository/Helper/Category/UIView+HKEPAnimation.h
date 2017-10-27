//
//  UIView+HKEPAnimation.h
//  HKEPLearnCantonese
//
//  Created by GZCP1897 on 17/5/27.
//  Copyright © 2017年 HKEP. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    HKEPAnimationStyleFade,//渐变动画
    HKEPAnimationStyleMoveIn,//覆盖动画
    HKEPAnimationStyleReveal,//同MovieIn相反
    HKEPAnimationStylePush,//Push动画
    
    HKEPAnimationStyleCube,//立方体旋转
    HKEPAnimationStyleSuckEffect,//吸入
    HKEPAnimationStyleOglFlip,//翻转
    HKEPAnimationStyleRippleEffect,//涟漪
    HKEPAnimationStylePageCurl,//翻页
    HKEPAnimationStylePageUnCurl,//反翻页
    HKEPAnimationStyleCameraIrisHollowOpen,//摄像机开
    HKEPAnimationStyleCameraIrisHollowCloseAnimation,//摄像机关
} HKEPAnimationStyle;

typedef enum : NSUInteger {
    HKEPAnimationDirectionTop,
    HKEPAnimationDirectionLeft,
    HKEPAnimationDirectionBottom,
    HKEPAnimationDirectionRight,
} HKEPAnimationDirection;


@interface UIView (HKEPAnimation)

- (void)addAnimationWithStyle:(HKEPAnimationStyle)style during:(CGFloat)time direction:(HKEPAnimationDirection)direction delegate:(id<CAAnimationDelegate>)delegate key:(NSString *)key;
@end
