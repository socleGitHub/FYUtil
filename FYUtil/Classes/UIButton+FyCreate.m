//
//  UIButton+FyCreate.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UIButton+FyCreate.h"
#import "UIButton+FYButton.h"
#import "HeaderDefine.h"
#import "FYMethod.h"

@implementation UIButton (FyCreate)

//combine
-(instancetype)initFyTitle:(NSString *)title{
    self = [super init];
    if (self) {
        [self setFyNorTitle:title];
    }
    [self sizeToFit];
    return self;
}


/// 构造方法 imageName
/// @param imageName Normal状态 图片
-(instancetype)initFyImage:(UIImage *)image{
    self = [super init];
    if (self) {
        [self setFyNorImage:image];
    }
    [self sizeToFit];
    return self;
}

-(instancetype)initFyImageName:(NSString *)imageName{
    return [self initFyImage:[UIImage imageNamed:imageName]];
}


-(instancetype)initFyTitle:(NSString *)title color:(UIColor *)color{
    self = [super init];
    if (self) {
        [[self setFyNorTitle:title] setFyNorTitleColor:color];
    }
    [self sizeToFit];
    return self;
}
-(instancetype)initFyTitle:(NSString *)title colorString:(NSString *)colorString{
    UIColor *color = [FYMethod convertStringToColor:colorString];
    return [self initFyTitle:title color:color];
}

-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font{
    self = [super init];
    if (self) {
        [[self setFyNorTitle:title] setFyFont:font];
    }
    [self sizeToFit];
    return self;
}


-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize{
    return [self initFyTitle:title font:[UIFont systemFontOfSize:fontSize]];
}

-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color{
    self = [super init];
    if (self) {
        [[[self setFyNorTitle:title] setFyFont:font] setFyNorTitleColor:color];
    }
    [self sizeToFit];
    return self;
}
-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize color:(UIColor *)color{
    return [self initFyTitle:title font:[UIFont systemFontOfSize:fontSize] color:color];
}
-(instancetype)initFyTitle:(NSString *)title fontSize:(CGFloat)fontSize colorString:(NSString *)colorString{
    UIColor *color = [FYMethod convertStringToColor:colorString];
    return [self initFyTitle:title font:[UIFont systemFontOfSize:fontSize] color:color];
}
-(instancetype)initFyTitle:(NSString *)title font:(UIFont *)font colorString:(NSString *)colorString{
    UIColor *color = [FYMethod convertStringToColor:colorString];
    return [self initFyTitle:title font:font color:color];
}

+(instancetype)buttonFyTitle:(NSString *)title{
    return [[self alloc] initFyTitle:title];
}

+(instancetype)buttonFyImage:(UIImage *)image{
    return [[self alloc] initFyImage:image];
}

+(instancetype)buttonFyImageName:(NSString *)imageName{
    return [[self alloc] initFyImageName:imageName];
}

+(instancetype)buttonFyTitle:(NSString *)title color:(UIColor *)color{
    return [[self alloc] initFyTitle:title color:color];
}
+(instancetype)buttonFyTitle:(NSString *)title colorString:(NSString *)colorString{
    UIColor *color = [FYMethod convertStringToColor:colorString];
    return [[self alloc] initFyTitle:title color:color];
}

+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font{
    return [[self alloc] initFyTitle:title font:font];
}
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize{
    return [[self alloc] initFyTitle:title fontSize:fontSize];
}

+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color{
    return [[self alloc] initFyTitle:title font:font color:color];
}
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize color:(UIColor *)color{
    return [[self alloc] initFyTitle:title fontSize:fontSize color:color];
}
+(instancetype)buttonFyTitle:(NSString *)title fontSize:(CGFloat)fontSize colorString:(NSString *)colorString{
    return [[self alloc] initFyTitle:title fontSize:fontSize colorString:colorString];
}
+(instancetype)buttonFyTitle:(NSString *)title font:(UIFont *)font colorString:(NSString *)colorString{
    return [[self alloc] initFyTitle:title font:font colorString:colorString];
}


-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors font:(UIFont *)font{
    self = [super init];
    if (self) {
        
        NSInteger maxCount = titles.count;
        if (maxCount < colors.count) {
            maxCount = colors.count;
        }
        if (maxCount > 3) {
            maxCount = 3;
        }
        
        NSString *title;
        UIColor  *color;
        for(int i=0; i<maxCount; i++){
            if (i < titles.count) {
                title = [titles objectAtIndex:i];
            }
            if (i < colors.count) {
                color = [colors objectAtIndex:i];
            }
            switch (i) {
                case 0:
                    [[self setFyNorTitle:title] setFyNorTitleColor:color];
                    break;
                case 1:
                    [[self setFySelTitle:title] setFySelTitleColor:color];
                    break;
                case 2:
                    [[self setFyHighTitle:title] setFyHighTitleColor:color];
                    break;
                    
                default:
                    break;
            }
        }
        
        [self setFyFont:font];
        
    }
    [self sizeToFit];
    return self;
}


-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings font:(UIFont *)font{
    NSMutableArray<UIColor *> *colors = [NSMutableArray array];
       for (int i=0; i<colorStrings.count; i++) {
           UIColor *color = [FYMethod convertStringToColor:[colorStrings objectAtIndex:i]];
           if (color) {
               [colors addObject:color];
           }
       }
       return [self initFyTitles:titles colors:colors font:font];
}
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings fontSize:(CGFloat)fontSize{
    NSMutableArray<UIColor *> *colors = [NSMutableArray array];
    for (int i=0; i<colorStrings.count; i++) {
        UIColor *color = [FYMethod convertStringToColor:[colorStrings objectAtIndex:i]];
        if (color) {
            [colors addObject:color];
        }
    }
    return [self initFyTitles:titles colors:colors font:[UIFont systemFontOfSize:fontSize]];
}
-(instancetype)initFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors fontSize:(CGFloat)fontSize{
    return [self initFyTitles:titles colors:colors font:[UIFont systemFontOfSize:fontSize]];
}


+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors font:(UIFont *)font{
    return [[self alloc] initFyTitles:titles colors:colors font:font];
}
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings font:(UIFont *)font{
     return [[self alloc] initFyTitles:titles colorStrings:colorStrings font:font];
}
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colorStrings:(NSArray<NSString *>*)colorStrings fontSize:(CGFloat)fontSize{
    return [[self alloc] initFyTitles:titles colorStrings:colorStrings fontSize:fontSize];
}
+(instancetype)buttonFyTitles:(NSArray<NSString *> *)titles colors:(NSArray<UIColor *>*)colors fontSize:(CGFloat)fontSize{
     return [[self alloc] initFyTitles:titles colors:colors fontSize:fontSize];
}


-(instancetype)addFyTarget:(id)target action:(SEL)action events:(UIControlEvents)controlEvent{
    [self addTarget:target action:action forControlEvents:controlEvent];
    return self;
}

-(instancetype)addFyTarget:(id)target action:(SEL)action{
    return [self addFyTarget:target action:action events:UIControlEventTouchUpInside];
}

@end
