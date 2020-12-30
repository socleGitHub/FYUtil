//
//  FYMethod.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "FYMethod.h"
#import "HeaderDefine.h"

@implementation FYMethod

/** hexString to number */
+(NSInteger)convertHexStringToNumber:(NSString *)hexString{
    
    const char *hexChar = [hexString cStringUsingEncoding:NSUTF8StringEncoding];
    
    int hexNumber;
    
    sscanf(hexChar, "%x", &hexNumber);
    
    return (NSInteger)hexNumber;
}

/** number to hexString */
+(NSString *)convertNumberToHexString:(NSInteger)number{
    char hexChar[7];
    sprintf(hexChar, "%x", (int)number);

    NSString *hexString = [NSString stringWithCString:hexChar encoding:NSUTF8StringEncoding];
    
    return hexString;
}

+(UIColor *)convertStringToColor:(NSString *)colorString{
    UIColor *color;
    if (NSStringFYExistFlag(colorString)) {
        NSArray<NSString *> *colors = [colorString componentsSeparatedByString:@"@"];
        if (colors.count == 4) {
            color = [UIColor colorWithRed:[colors[0] floatValue] green:[colors[1] floatValue] blue:[colors[2] floatValue] alpha:[colors[3] floatValue]];
        }else{
            colorString = [colorString stringByReplacingOccurrencesOfString:@"#" withString:@""];
            if (colorString.length == 6) {
                color = UIColorFromRGB([self convertHexStringToNumber:colorString]);
            }else if (colorString.length == 8){
                color = UIColorFromRGBA([self convertHexStringToNumber:colorString]);
            }
        }
    }
    return color;
}


/* base64解码 */
+(NSData *)Base64Decode:(NSString *)strBase64{
    return [[NSData alloc] initWithBase64EncodedString:strBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
}

/* base64编码 */
+(NSString *)Base64Encode:(NSData *)pdData{
    return [pdData base64EncodedStringWithOptions:0];
}

/* data <--> Hex String */
+(NSString *)convertDataToHexStr:(NSData *)data{
    if (!data || [data length] == 0) {
        return @"";
    }
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:[data length]];
    [data enumerateByteRangesUsingBlock:^(const void *bytes, NSRange byteRange, BOOL *stop) {
        unsigned char *dataBytes = (unsigned char*)bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString *hexStr = [NSString stringWithFormat:@"%x", (dataBytes[i]) & 0xff];
            if ([hexStr length] == 2) {
                [string appendString:hexStr];
            } else {
                [string appendFormat:@"0%@", hexStr];
            }
        }
    }];
    return string;
}

+(NSData *)convertHexStrToData:(NSString *)str{
    if (!str || [str length] == 0) {
        return [NSData data];
    }
    NSMutableData *hexData = [[NSMutableData alloc] initWithCapacity:20];
    NSRange range;
    if ([str length] % 2 == 0) {
        range = NSMakeRange(0, 2);
    } else {
        range = NSMakeRange(0, 1);
    }
    for (NSInteger i = range.location; i < [str length]; i += 2) {
        unsigned int anInt;
        NSString *hexCharStr = [str substringWithRange:range];
        NSScanner *scanner = [[NSScanner alloc] initWithString:hexCharStr];
        
        [scanner scanHexInt:&anInt];
        NSData *entity = [[NSData alloc] initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        
        range.location += range.length;
        range.length = 2;
    }
    return [NSData dataWithData:hexData];
}

/**
 Returns a percent-escaped string following RFC 3986 for a query string key or value.
 RFC 3986 states that the following characters are "reserved" characters.
    - General Delimiters: ":", "#", "[", "]", "@", "?", "/"
    - Sub-Delimiters: "!", "$", "&", "'", "(", ")", "*", "+", ",", ";", "="

 In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
 query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
 should be percent-escaped in the query string.
    - parameter string: The string to be percent-escaped.
    - returns: The percent-escaped string.
 */
+(NSString *)FyPercentEscapedStringFromString:(NSString *)string{
    static NSString * const kAFCharactersGeneralDelimitersToEncode = @":#[]@"; // does not include "?" or "/" due to RFC 3986 - Section 3.4
    static NSString * const kAFCharactersSubDelimitersToEncode = @"!$&'()*+,;=";

    NSMutableCharacterSet * allowedCharacterSet = [[NSCharacterSet URLQueryAllowedCharacterSet] mutableCopy];
    [allowedCharacterSet removeCharactersInString:[kAFCharactersGeneralDelimitersToEncode stringByAppendingString:kAFCharactersSubDelimitersToEncode]];

    // FIXME: https://github.com/AFNetworking/AFNetworking/pull/3028
    // return [string stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet];

    static NSUInteger const batchSize = 50;

    NSUInteger index = 0;
    NSMutableString *escaped = @"".mutableCopy;

    while (index < string.length) {
        NSUInteger length = MIN(string.length - index, batchSize);
        NSRange range = NSMakeRange(index, length);

        // To avoid breaking up character sequences such as 👴🏻👮🏽
        range = [string rangeOfComposedCharacterSequencesForRange:range];

        NSString *substring = [string substringWithRange:range];
        NSString *encoded = [substring stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet];
        [escaped appendString:encoded];

        index += range.length;
    }

    return escaped;
}

+(UIImage *)convertColorToImage:(UIColor *)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
