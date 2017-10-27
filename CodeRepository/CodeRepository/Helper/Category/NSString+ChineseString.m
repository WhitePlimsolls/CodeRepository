//
//  NSString+ChineseString.m
//  HKEPLearnCantonese
//
//  Created by GZCP1897 on 2017/10/25.
//  Copyright © 2017年 HKEP. All rights reserved.
//

#import "NSString+ChineseString.h"

@implementation NSString (ChineseString)

- (BOOL)hasChinese{
    for(int i = 0; i < [self length]; i++){
        int a = [self characterAtIndex:i];
        if( a > 0x4e00 && a < 0x9fff)
        {
            return YES;
        }
    }
    return NO;
}
- (BOOL)hasChineseAndPunctuation{
    for(int i = 0; i < [self length]; i++){
        NSRange range = NSMakeRange(i, 1);
        NSString *subStr = [self substringWithRange:range];
        const char *c = [subStr UTF8String];
        if (strlen(c)==3)
        {
            return YES;
        }
    }
    return NO;
}
@end
