//
//  UIButton+FyCreate.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (FyCreate)

//combine
/// 构造方法 title
/// @param title Normal状态 标题
-(instancetype)initFyTitle:(NSString *)title;
/// 构造方法 imageName
/// @param image Normal状态 图片
-(instancetype)initFyImage:(UIImage *)image;
/// 构造方法 imageName
/// @param imageName Normal状态 图片名称
-(instancetype)initFyImageName:(NSString *)imageName;

/// 构造方法 title&color
/// @param title Normal状态 标题
/// @param color Normal状态 颜色
-(instancetype)initFyTitle:(NSString *)title color:(UIColor *)color;
-(instancetype)initFyTitle:(NSString *)title colorString:(NSString *)colorString;

/// 构造方法 title&font
/// @param title Normal状态 标题
/// @param font  Normal状态 字体
-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font;
-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize;

/// 构造方法 title&font&color
/// @param title Normal状态 标题
/// @param font Normal状态 字体
/// @param color Normal状态 颜色
-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color;
-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize color:(UIColor *)color;
-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize colorString:(NSString *)colorString;
-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font colorString:(NSString *)colorString;

/// 构造方法 title
/// @param title Normal状态 标题
+(instancetype)buttonFyTitle:(NSString *)title;

/// 构造方法 imageName
/// @param image Normal状态 图片
+(instancetype)buttonFyImage:(UIImage *)image;

/// 构造方法 imageName
/// @param imageName Normal状态 图片名称
+(instancetype)buttonFyImageName:(NSString *)imageName;

/// 构造方法 title&color
/// @param title Normal状态 标题
/// @param color Normal状态 颜色
+(instancetype)buttonFyTitle:(NSString *)title color:(UIColor *)color;
+(instancetype)buttonFyTitle:(NSString *)title colorString:(NSString *)colorString;

/// 构造方法 title&font
/// @param title Normal状态 标题
/// @param font  Normal状态 字体
+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font;
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize;

/// 构造方法 title&font&color
/// @param title Normal状态 标题
/// @param font Normal状态 字体
/// @param color Normal状态 颜色
+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color;
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize color:(UIColor *)color;
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize colorString:(NSString *)colorString;
+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font colorString:(NSString *)colorString;

/// 构造方法 titles&font&colors
/// @param titles 标题 数组
/// @param font 字体 数组
/// @param colors 颜色 数组
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors font:(UIFont *)font;
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings font:(UIFont *)font;
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings fontSize:(CGFloat)fontSize;
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors fontSize:(CGFloat)fontSize;
/// 构造方法 titles&font&colors
/// @param titles 标题 数组
/// @param font 字体 数组
/// @param colors 颜色 数组
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors font:(UIFont *)font;
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings font:(UIFont *)font;
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings fontSize:(CGFloat)fontSize;
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors fontSize:(CGFloat)fontSize;


/// 添加响应事件
/// @param target 目标
/// @param action 方法
/// @param controlEvent 事件类型
-(instancetype)addFyTarget:(id)target action:(SEL)action events:(UIControlEvents)controlEvent;
/// 添加响应事件
/// @param target 目标
/// @param action 方法
-(instancetype)addFyTarget:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
