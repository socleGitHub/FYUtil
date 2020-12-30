//
//  FYMethod.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

#define     FYStringColor(colorString)      [FYMethod convertStringToColor:colorString]
#define     FYB64Encode(data)               [FYMethod Base64Encode:data]
#define     FYB64Decode(data)               [FYMethod Base64Decode:b64String]


NS_ASSUME_NONNULL_BEGIN

/// FYMethod
@interface FYMethod : NSObject
/** hexString to number */
+(NSInteger)convertHexStringToNumber:(NSString *)hexString;
/** number to hexString */
+(NSString *)convertNumberToHexString:(NSInteger)number;

/// 将字符串转为颜色
/// @param colorString 颜色 字符串 如:#16cd6c或16cd6c
+(UIColor *)convertStringToColor:(NSString *)colorString;

/* base64解码 */
+(NSData *)Base64Decode:(NSString *)strBase64;
/* base64编码 */
+(NSString *)Base64Encode:(NSData *)pdData;

/* data <--> Hex String */
+(NSString *)convertDataToHexStr:(NSData *)data;
+(NSData *)convertHexStrToData:(NSString *)hexString;


/// 对字符进行URL编码
/// @param string 字符串
+(NSString *)FyPercentEscapedStringFromString:(NSString *)string;

/// 将颜色转为图片
/// @param color 颜色
+(UIImage *)convertColorToImage:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
