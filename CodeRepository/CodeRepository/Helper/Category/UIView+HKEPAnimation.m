//
//  UIView+HKEPAnimation.m
//  HKEPLearnCantonese
//
//  Created by GZCP1897 on 17/5/27.
//  Copyright © 2017年 HKEP. All rights reserved.
//

#import "UIView+HKEPAnimation.h"


@implementation UIView (HKEPAnimation)

- (void)addAnimationWithStyle:(HKEPAnimationStyle)style during:(CGFloat)time direction:(HKEPAnimationDirection)direction delegate:(id<CAAnimationDelegate>)delegate key:(NSString *)key{
    CATransition *anima = [CATransition animation];
    if (delegate) {
        anima.delegate = delegate;
    }
    //设置动画的类型
    switch (style) {
        case HKEPAnimationStyleFade:
            anima.type = kCATransitionFade;
            break;
        case HKEPAnimationStyleMoveIn:
            anima.type = kCATransitionMoveIn;
            break;
        case HKEPAnimationStyleReveal:
            anima.type = kCATransitionReveal;
            break;
        case HKEPAnimationStylePush:
            anima.type = kCATransitionPush;
            break;
            
        case HKEPAnimationStyleCube:
            anima.type = @"cube";
            break;
        case HKEPAnimationStyleSuckEffect:
            anima.type = @"suckEffect";
            break;
        case HKEPAnimationStyleOglFlip:
            anima.type = @"oglFlip";
            break;
        case HKEPAnimationStyleRippleEffect:
            anima.type = @"rippleEffect";
            break;
        case HKEPAnimationStylePageCurl:
            anima.type = @"pageCurl";
            break;
        case HKEPAnimationStylePageUnCurl:
            anima.type = @"pageUnCurl";
            break;
        case HKEPAnimationStyleCameraIrisHollowOpen:
            anima.type = @"cameraIrisHollowOpen";
            break;
        case HKEPAnimationStyleCameraIrisHollowCloseAnimation:
            anima.type = @"cameraIrisHollowCloseAnimation";
            break;
            
        default:
            break;
    }
    
    //设置动画的方向
    switch (direction) {
        case HKEPAnimationDirectionTop:
            anima.subtype = kCATransitionFromTop;
            break;
        case HKEPAnimationDirectionLeft:
            anima.subtype = kCATransitionFromLeft;
            break;
        case HKEPAnimationDirectionBottom:
            anima.subtype = kCATransitionFromBottom;
            break;
        case HKEPAnimationDirectionRight:
            anima.subtype = kCATransitionFromRight;
            break;
        default:
            break;
    }
    
    anima.duration = time;
    if (!key || [key isEqualToString:@""]) {
        key = @"假装存在的Key";
    }
    
    [self.layer addAnimation:anima forKey:key];
}
@end
