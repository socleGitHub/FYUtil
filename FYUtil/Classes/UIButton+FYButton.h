//
//  UIButton+FYButton.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/20.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


/// UIButton 实例方法
@interface UIButton (FYButton)

/// block 布局
/// @param block 布局
-(instancetype)layoutFyView:(void (^ _Nullable)(UIButton * _Nonnull button))block;

//title

/// 设置Normal状态 title
/// @param title 标题名称
-(instancetype)setFyNorTitle:(NSString *)title;
/// 设置Highlighted状态 title
/// @param title 标题名称
-(instancetype)setFyHighTitle:(NSString *)title;
/// 设置Selected状态 title
/// @param title 标题名称
-(instancetype)setFySelTitle:(NSString *)title;

//titleColor

/// 设置Normal状态 标题颜色
/// @param titleColor 标题颜色
-(instancetype)setFyNorTitleColor:(UIColor *)titleColor;
/// 设置Highlighted状态 标题颜色
/// @param titleColor 标题颜色
-(instancetype)setFyHighTitleColor:(UIColor *)titleColor;
/// 设置Selected状态 标题颜色
/// @param titleColor 标题颜色
-(instancetype)setFySelTitleColor:(UIColor *)titleColor;

//image
/// 设置Normal状态 图片
/// @param value 图片
-(instancetype)setFyNorImage:(UIImage *)value;
/// 设置Highlighted状态 图片
/// @param value 图片
-(instancetype)setFyHighImage:(UIImage *)value;
/// 设置Selected状态 图片
/// @param value 图片
-(instancetype)setFySelImage:(UIImage *)value;

//backgroundImage
/// 设置Normal状态 背景 图片
/// @param value 图片
-(instancetype)setFyNorBgImage:(UIImage *)value;
/// 设置Highlighted状态 背景 图片
/// @param value 图片
-(instancetype)setFyHighBgImage:(UIImage *)value;
/// 设置Selected状态 背景 图片
/// @param value 图片
-(instancetype)setFySelBgImage:(UIImage *)value;

//font fontsize
/// 设置字体
/// @param value 字体
-(instancetype)setFyFont:(UIFont *)value;
/// 设置字体
/// @param value 字体大小
-(instancetype)setFyFontSize:(CGFloat)value;

#pragma mark - image color 传string参数

//titleColor string

/// 设置Normal状态 标题颜色
/// @param value 标题颜色  字符串 如:#16cd6c或16cd6c
-(instancetype)setFyNorTitleStringColor:(NSString *)value;
/// 设置Highlighted状态 标题颜色
/// @param value 标题颜色 字符串 如:#16cd6c或16cd6c
-(instancetype)setFyHighTitleStringColor:(NSString *)value;
/// 设置Selected状态 标题颜色
/// @param value 标题颜色 字符串 如:#16cd6c或16cd6c
-(instancetype)setFySelTitleStringColor:(NSString *)value;

//image
/// 设置Normal状态 图片
/// @param value 图片名称
-(instancetype)setFyNorImageName:(NSString *)value;
/// 设置Highlighted状态 图片
/// @param value 图片名称
-(instancetype)setFyHighImageName:(NSString *)value;
/// 设置Selected状态 图片
/// @param value 图片名称
-(instancetype)setFySelImageName:(NSString *)value;

//backgroundImage
/// 设置Normal状态 背景 图片
/// @param value 图片名称
-(instancetype)setFyNorBgImageName:(NSString *)value;
/// 设置Highlighted状态 背景 图片
/// @param value 图片名称
-(instancetype)setFyHighBgImageName:(NSString *)value;
/// 设置Selected状态 背景 图片
/// @param value 图片名称
-(instancetype)setFySelBgImageName:(NSString *)value;

//font fontsize
/// 设置字体
/// @param value 字体大小
-(instancetype)setFyFontSizeString:(NSString *)value;

@end

NS_ASSUME_NONNULL_END
