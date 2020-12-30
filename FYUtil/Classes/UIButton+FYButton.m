//
//  UIButton+FYButton.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/20.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UIButton+FYButton.h"
#import "UIView+FYView.h"
#import "HeaderDefine.h"
#import "FYMethod.h"

@implementation UIButton (FYButton)


/// block 布局
/// @param block 布局
-(instancetype)layoutFyView:(void (^ _Nullable)(UIButton * _Nonnull button))block{
    WEAK_SELF(self,weakSelf)
    if (block) {
        block(weakSelf);
    }
    return self;
}

//title
-(instancetype)setFyNorTitle:(NSString *)title{
    if (!NSStringFYExistFlag(title)) {
        return self;
    }
    [self setTitle:title forState:UIControlStateNormal];
    return self;
}

-(instancetype)setFyHighTitle:(NSString *)title{
    if (!NSStringFYExistFlag(title)) {
        return self;
    }
    [self setTitle:title forState:UIControlStateHighlighted];
    return self;
}

-(instancetype)setFySelTitle:(NSString *)title{
    if (!NSStringFYExistFlag(title)) {
        return self;
    }
    [self setTitle:title forState:UIControlStateSelected];
    return self;
}

//titleColor
-(instancetype)setFyNorTitleColor:(UIColor *)titleColor{
    if (!UIColorFYExistFlag(titleColor)) {
        return self;
    }
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    return self;
}

-(instancetype)setFyHighTitleColor:(UIColor *)titleColor{
    if (!UIColorFYExistFlag(titleColor)) {
        return self;
    }
    [self setTitleColor:titleColor forState:UIControlStateHighlighted];
    return self;
}

-(instancetype)setFySelTitleColor:(UIColor *)titleColor{
    if (!UIColorFYExistFlag(titleColor)) {
        return self;
    }
    [self setTitleColor:titleColor forState:UIControlStateSelected];
    return self;
}

//image

-(instancetype)setFyNorImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setImage:value forState:UIControlStateNormal];
    [self sizeToFit];
    return self;
}

-(instancetype)setFyHighImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setImage:value forState:UIControlStateHighlighted];
    [self sizeToFit];
    return self;
}

-(instancetype)setFySelImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setImage:value forState:UIControlStateSelected];
    [self sizeToFit];
    return self;
}

//backgroundImage

-(instancetype)setFyNorBgImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setBackgroundImage:value forState:UIControlStateNormal];
    return self;
}

-(instancetype)setFyHighBgImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setBackgroundImage:value forState:UIControlStateHighlighted];
    return self;
}

-(instancetype)setFySelBgImage:(UIImage *)value{
    if (!UIImageFYExistFlag(value)) {
        return self;
    }
    [self setBackgroundImage:value forState:UIControlStateSelected];
    return self;
}

//font fontsize

-(instancetype)setFyFont:(UIFont *)value{
    if (!UIFontFYExistFlag(value)) {
        return self;
    }
    [self.titleLabel setFont:value];
    return self;
}

-(instancetype)setFyFontSize:(CGFloat)value{
    if (value <= 0) {
        return self;
    }
    [self.titleLabel setFont:[UIFont systemFontOfSize:value]];
    return self;
}


#pragma mark - image color 传string参数

//titleColor string

/// 设置Normal状态 标题颜色
/// @param value 标题颜色  字符串(RGBA/RGB)  如:#16cd6cff 或16cd6c 或 #16cd6c
-(instancetype)setFyNorTitleStringColor:(NSString *)value{
    return [self setFyNorTitleColor:[FYMethod convertStringToColor:value]];
}
/// 设置Highlighted状态 标题颜色
/// @param value 标题颜色  字符串(RGBA/RGB)  如:#16cd6cff 或16cd6c 或 #16cd6c
-(instancetype)setFyHighTitleStringColor:(NSString *)value{
    return [self setFyHighTitleColor:[FYMethod convertStringToColor:value]];
}
/// 设置Selected状态 标题颜色
/// @param value 标题颜色  字符串(RGBA/RGB)  如:#16cd6cff 或16cd6c 或 #16cd6c
-(instancetype)setFySelTitleStringColor:(NSString *)value{
    return [self setFySelTitleColor:[FYMethod convertStringToColor:value]];
}

//image
/// 设置Normal状态 图片
/// @param value 图片名称
-(instancetype)setFyNorImageName:(NSString *)value{
    return [self setFyNorImage:[UIImage imageNamed:value]];
}
/// 设置Highlighted状态 图片
/// @param value 图片名称
-(instancetype)setFyHighImageName:(NSString *)value{
    return [self setFyHighImage:[UIImage imageNamed:value]];
}
/// 设置Selected状态 图片
/// @param value 图片名称
-(instancetype)setFySelImageName:(NSString *)value{
    return [self setFySelImage:[UIImage imageNamed:value]];
}

//backgroundImage
/// 设置Normal状态 背景 图片
/// @param value 图片名称
-(instancetype)setFyNorBgImageName:(NSString *)value{
    return [self setFyNorBgImage:[UIImage imageNamed:value]];
}
/// 设置Highlighted状态 背景 图片
/// @param value 图片名称
-(instancetype)setFyHighBgImageName:(NSString *)value{
    return [self setFyHighBgImage:[UIImage imageNamed:value]];
}
/// 设置Selected状态 背景 图片
/// @param value 图片名称
-(instancetype)setFySelBgImageName:(NSString *)value{
    return [self setFySelBgImage:[UIImage imageNamed:value]];
}

//font fontsize
/// 设置字体
/// @param value 字体大小
-(instancetype)setFyFontSizeString:(NSString *)value{
    return [self setFyFontSize:[value floatValue]];
}

@end
