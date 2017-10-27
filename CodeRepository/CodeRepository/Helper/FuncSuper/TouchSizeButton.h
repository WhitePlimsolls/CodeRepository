//
//  TouchSizeButton.h
//  CodeRepository
//
//  Created by GZCP1897 on 2017/10/27.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchSizeButton : UIButton

/**
 最小的响应区域，最小44，根据设置的数据或者按钮的大小取最大值
 */
@property (nonatomic, assign) CGSize minTouchSize;
@end
