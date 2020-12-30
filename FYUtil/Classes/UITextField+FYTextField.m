//
//  UITextField+FYTextField.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UITextField+FYTextField.h"
#import "UIView+FYView.h"
#import "HeaderDefine.h"
#import "FYMethod.h"

@implementation UITextField (FYTextField)

-(instancetype)layoutFyView:(void(^ _Nullable)(UITextField * _Nonnull textField))block{
    WEAK_SELF(self,weakSelf)
    if (block) {
        block(weakSelf);
    }
    return self;
}

-(instancetype)setFyText:(NSString *)text{
    if (text && [text isKindOfClass:[NSString class]]) {
        [self setText:text];
    }
    return self;
}
- (instancetype)setFyPlaceHolder:(NSString *)placeText{
    if (NSStringFYExistFlag(placeText)) {
        [self setPlaceholder:placeText];
    }
    return self;
}

-(instancetype)setFyFont:(UIFont *)font{
    if (UIFontFYExistFlag(font)) {
        [self setFont:font];
    }
    return self;
}

-(instancetype)setFyFontSize:(CGFloat)fontSize{
    return [self setFyFont:UIFontFYSize(fontSize)];
}

-(instancetype)setFyTextColor:(UIColor *)color{
    if (UIColorFYExistFlag(color)) {
        self.textColor = color;
    }
    return self;
}

-(instancetype)setFyTextColorString:(NSString *)colorString{
    UIColor *color = [FYMethod convertStringToColor:colorString];
    return [self setFyTextColor:color];
}

- (instancetype)setFyKeyBoard:(UIKeyboardType)type{
    [self setKeyboardType:type];
    return self;
}


+(instancetype)textFieldFyText:(NSString *)text{
    return [[self alloc] initFyText:text];
}
+(instancetype)textFieldFyText:(NSString *)text color:(UIColor *)color{
    return [[self alloc] initFyText:text color:color];
}
+(instancetype)textFieldFyText:(NSString *)text colorString:(NSString *)colorString{
    return [[self alloc] initFyText:text colorString:colorString];
}

+(instancetype)textFieldFyText:(NSString *)text color:(UIColor *)color font:(UIFont *)font{
    return [[self alloc] initFyText:text color:color font:font];
}
+(instancetype)textFieldFyText:(NSString *)text colorString:(NSString *)colorString fontSize:(CGFloat)fontSize{
    return [[self alloc] initFyText:text colorString:colorString fontSize:fontSize];
}

+(instancetype)textFieldFyText:(NSString *)text font:(UIFont *)font{
    return [[self alloc] initFyText:text font:font];
}
+(instancetype)textFieldFyText:(NSString *)text fontSize:(CGFloat)fontSize{
    return [[self alloc] initFyText:text fontSize:fontSize];
}

-(instancetype)initFyText:(NSString *)text{
    self = [super init];
    if (self) {
        [self setFyText:text];
        [self sizeToFit];
    }
    return self;
}
-(instancetype)initFyText:(NSString *)text color:(UIColor *)color{
    self = [super init];
    if (self) {
        [[self setFyText:text] setFyTextColor:color];
        [self sizeToFit];
    }
    return self;
}
-(instancetype)initFyText:(NSString *)text colorString:(NSString *)colorString{
    self = [super init];
    if (self) {
        [[self setFyText:text] setFyTextColorString:colorString];
        [self sizeToFit];
    }
    return self;
}

-(instancetype)initFyText:(NSString *)text color:(UIColor *)color font:(UIFont *)font{
    self = [super init];
    if (self) {
        [[[self setFyText:text] setFyTextColor:color] setFyFont:font];
        [self sizeToFit];
    }
    return self;
}
-(instancetype)initFyText:(NSString *)text colorString:(NSString *)colorString fontSize:(CGFloat)fontSize{
    self = [super init];
    if (self) {
        [[[self setFyText:text] setFyTextColorString:colorString] setFyFontSize:fontSize];
        [self sizeToFit];
    }
    return self;
}

-(instancetype)initFyText:(NSString *)text font:(UIFont *)font{
    self = [super init];
    if (self) {
        [[self setFyText:text] setFyFont:font];
        [self sizeToFit];
    }
    return self;
}
-(instancetype)initFyText:(NSString *)text fontSize:(CGFloat)fontSize{
    self = [super init];
    if (self) {
        [[self setFyText:text] setFyFontSize:fontSize];
        [self sizeToFit];
    }
    return self;
}

@end
