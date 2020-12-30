//
//  UITextField+FYTextField.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (FYTextField)

-(instancetype)layoutFyView:(void(^ _Nullable)(UITextField * _Nonnull textField))block;

#pragma mark - Label 设置 方法
/// 设置text
/// @param text 文本
-(instancetype)setFyText:(NSString *)text;

/// 设置placeHolder
/// @param placeText 提示文字
-(instancetype)setFyPlaceHolder:(NSString *)placeText;

/// 设置字体
/// @param font 字体
-(instancetype)setFyFont:(UIFont *)font;

/// 设置字体
/// @param fontSize 字体大小
-(instancetype)setFyFontSize:(CGFloat)fontSize;

/// 设置颜色
/// @param color 颜色
-(instancetype)setFyTextColor:(UIColor *)color;

/// 设置颜色
/// @param colorString 字体颜色  字符串 如:#16cd6c或16cd6c
-(instancetype)setFyTextColorString:(NSString *)colorString;

/// 设置键盘类型
/// @param type 键盘类型
-(instancetype)setFyKeyBoard:(UIKeyboardType)type;

#pragma mark - 构造方法

/// 构造方法 text
/// @param text 文本
+(instancetype)textFieldFyText:(NSString *)text;

/// 构造方法 text&color
/// @param text 文本
/// @param color 颜色
+(instancetype)textFieldFyText:(NSString *)text color:(UIColor *)color;
/// 构造方法 text&colorString
/// @param text 文本
/// @param colorString 字体颜色  字符串 如:#16cd6c或16cd6c
+(instancetype)textFieldFyText:(NSString *)text colorString:(NSString *)colorString;

/// 构造方法 text&color&font
/// @param text 文本
/// @param color 颜色
/// @param font 字体
+(instancetype)textFieldFyText:(NSString *)text color:(UIColor *)color font:(UIFont *)font;
/// 构造方法 text&color&font
/// @param text 文本
/// @param colorString 字体颜色  字符串 如:#16cd6c或16cd6c
/// @param fontSize 字体大小
+(instancetype)textFieldFyText:(NSString *)text colorString:(NSString *)colorString fontSize:(CGFloat)fontSize;

/// 构造方法 text&font
/// @param text 文本
/// @param font 字体
+(instancetype)textFieldFyText:(NSString *)text font:(UIFont *)font;
/// 构造方法 text&font
/// @param text 文本
/// @param fontSize 字体大小
+(instancetype)textFieldFyText:(NSString *)text fontSize:(CGFloat)fontSize;


/// 构造方法 text
/// @param text 文本
-(instancetype)initFyText:(NSString *)text;

/// 构造方法 text&color
/// @param text 文本
/// @param color 颜色
-(instancetype)initFyText:(NSString *)text color:(UIColor *)color;
/// 构造方法 text&colorString
/// @param text 文本
/// @param colorString 字体颜色  字符串 如:#16cd6c或16cd6c
-(instancetype)initFyText:(NSString *)text colorString:(NSString *)colorString;

/// 构造方法 text&color&font
/// @param text 文本
/// @param color 颜色
/// @param font 字体
-(instancetype)initFyText:(NSString *)text color:(UIColor *)color font:(UIFont *)font;
/// 构造方法 text&color&font
/// @param text 文本
/// @param colorString 字体颜色  字符串 如:#16cd6c或16cd6c
/// @param fontSize 字体大小
-(instancetype)initFyText:(NSString *)text colorString:(NSString *)colorString fontSize:(CGFloat)fontSize;

/// 构造方法 text&font
/// @param text 文本
/// @param font 字体
-(instancetype)initFyText:(NSString *)text font:(UIFont *)font;
/// 构造方法 text&font
/// @param text 文本
/// @param fontSize 字体大小
-(instancetype)initFyText:(NSString *)text fontSize:(CGFloat)fontSize;


@end

NS_ASSUME_NONNULL_END
