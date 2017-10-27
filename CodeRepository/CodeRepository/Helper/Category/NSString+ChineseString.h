//
//  NSString+ChineseString.h
//  HKEPLearnCantonese
//
//  Created by GZCP1897 on 2017/10/25.
//  Copyright © 2017年 HKEP. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (ChineseString)

/**
 是否有中文文字在其中（不包含中文符号）
 
 @return 如果有中文返回YES，没有返回NO
 */
- (BOOL)hasChinese;

/**
 是否含有中文文字或中文标点

 @return 如果有中文返回YES，没有返回NO
 */
- (BOOL)hasChineseAndPunctuation;
@end
