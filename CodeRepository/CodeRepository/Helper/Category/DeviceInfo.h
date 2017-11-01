//
//  DeviceInfo.h
//  CodeRepository
//
//  Created by GZCP1897 on 2017/11/1.
//  Copyright © 2017年 GZCP1897. All rights reserved.
//

#import <Foundation/Foundation.h>
// 设备型号的枚举值
typedef NS_ENUM(NSUInteger, DeviceType) {
    iPhone_1G = 0,
    iPhone_3G,
    iPhone_3GS,
    iPhone_4,
    iPhone_4_Verizon,
    iPhone_4S,
    iPhone_5_GSM,
    iPhone_5_CDMA,
    iPhone_5C_GSM,
    iPhone_5C_GSM_CDMA,
    iPhone_5S_GSM,
    iPhone_5S_GSM_CDMA,
    iPhone_6,
    iPhone_6_Plus,
    iPhone_6S,
    iPhone_6S_Plus,
    iPhone_SE,
    Chinese_iPhone_7,
    Chinese_iPhone_7_Plus,
    American_iPhone_7,
    American_iPhone_7_Plus,
    Chinese_iPhone_8,
    Chinese_iPhone_8_Plus,
    Chinese_iPhone_X,
    Global_iPhone_8,
    Global_iPhone_8_Plus,
    Global_iPhone_X,
    
    iPod_Touch_1G,
    iPod_Touch_2G,
    iPod_Touch_3G,
    iPod_Touch_4G,
    iPod_Touch_5Gen,
    iPod_Touch_6G,
    
    iPad_1,
    iPad_3G,
    iPad_2_WiFi,
    iPad_2_GSM,
    iPad_2_CDMA,
    iPad_3_WiFi,
    iPad_3_GSM,
    iPad_3_CDMA,
    iPad_3_GSM_CDMA,
    iPad_4_WiFi,
    iPad_4_GSM,
    iPad_4_CDMA,
    iPad_4_GSM_CDMA,
    iPad_Air,
    iPad_Air_Cellular,
    iPad_Air_2_WiFi,
    iPad_Air_2_Cellular,
    iPad_Pro_97inch_WiFi,
    iPad_Pro_97inch_Cellular,
    iPad_Pro_129inch_WiFi,
    iPad_Pro_129inch_Cellular,
    iPad_Mini,
    iPad_Mini_WiFi,
    iPad_Mini_GSM,
    iPad_Mini_CDMA,
    iPad_Mini_GSM_CDMA,
    iPad_Mini_2,
    iPad_Mini_2_Cellular,
    iPad_Mini_3_WiFi,
    iPad_Mini_3_Cellular,
    iPad_Mini_4_WiFi,
    iPad_Mini_4_Cellular,
    iPad_5_WiFi,
    iPad_5_Cellular,
    iPad_Pro_129inch_2nd_gen_WiFi,
    iPad_Pro_129inch_2nd_gen_Cellular,
    iPad_Pro_105inch_WiFi,
    iPad_Pro_105inch_Cellular,
    
    appleTV2,
    appleTV3,
    appleTV4,
    
    i386Simulator,
    x86_64Simulator,
    
    iUnknown,
};

@interface DeviceInfo : NSObject

/**
 判断是否是iPhoneX的手机机型

 @return if iPhoneX return YES
 */
+ (BOOL)deviceIsiPhoneX;

+ (DeviceType)deviceType;

/**
 获取设备的型号名称

 @return 型号名称
 */
+ (const NSString *)deviceNameString;

/**
 获取设备电池容量，单位 mA 毫安

 @return 电池容量
 */
+ (NSInteger)deviceBatteryCapacity;

/**
 获取电池电压，单位 V 福特

 @return 电池电压
 */
+ (CGFloat)deviceBatterVolocity;

/**
 获取CPU处理器名称

 @return CPU处理器
 */
+ (const NSString *)deviceCPUProcessor;
@end
