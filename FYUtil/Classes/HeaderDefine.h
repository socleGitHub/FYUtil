//
//  HeaderDefine.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/20.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#ifndef HeaderDefine_h
#define HeaderDefine_h


#define     VZ_DEBUG                TARGET_IPHONE_SIMULATOR
#define     CA_CONTROLL             TARGET_IPHONE_SIMULATOR

#pragma mark - 1.屏幕宽度与高度
#define     APP_SCR_W               [UIScreen mainScreen].bounds.size.width
#define     APP_SCR_H               [UIScreen mainScreen].bounds.size.height
#define     APP_SCR_S               [UIScreen mainScreen].bounds.size

//6 667-375 6p 736-414
#define     APP_Ratio               ((APP_SCR_W) / 375.0f)


#pragma mark - 2.通知中心
#define     NOTI_CENTER             [NSNotificationCenter defaultCenter]


#pragma mark - 3.设置颜色
#define     UIColorFromRGB(rgbValue)        [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0f green:((float)((rgbValue & 0xFF00) >> 8))/255.0f blue:((float)(rgbValue & 0xFF))/255.0f alpha:1.0f]
#define     UIColorFromRGBA(rgbaValue)      [UIColor colorWithRed:((float)((rgbaValue & 0xFF000000) >> 24))/255.0f green:((float)((rgbaValue & 0xFF0000) >> 16))/255.0f blue:((float)((rgbaValue & 0xFF00)>> 8))/255.0f alpha:((float)(rgbaValue & 0xFF))/255.0f]

#define     UIColorWithDRGBA(R, G, B, A)    [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A/255.0f]
#define     UIColorWithDRGB(R, G, B)        [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]
#define     UIColorWithFRGBA(R, G, B, A)    [UIColor colorWithRed:R green:G blue:B alpha:A]
#define     UIColorWithFRGB(R, G, B)        [UIColor colorWithRed:R green:G blue:B alpha:1.0f]


#pragma mark - 4.设置图片
#define     UIImageFile1(fileName, fileExt) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:fileExt]]
#define     UIImageFile2(fileName)          [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:nil]]
#define     UIImageNamed(imageName)         [UIImage imageNamed:imageName]
#define     createImageWithColor(color)     [VZFunction createImageWithColor:(color)]

#pragma mark - 5.弱引用
#define     WEAK_SELF(OC_object,weakType)   typeof(*&OC_object) (weakType) = OC_object;
#define     WEAK_SELF_DEF                   WEAK_SELF(self, weakSelf)

#pragma mark - 6.字体
#define     UIFontFYSize(fontSize)          [UIFont systemFontOfSize:fontSize]
#define     UIFontFYWeight(fontSize,UIFontWeight)\
                                            [UIFont systemFontOfSize:fontSize weight:UIFontWeight]


#pragma mark - 7.判断是否存在
#define NSStringFYExistFlag(value)          (value && [value isKindOfClass:[NSString class]] && [value length])
#define UIFontFYExistFlag(value)            (value && [value isKindOfClass:[UIFont class]])
#define NSDataFYExistFlag(value)            (value && [value isKindOfClass:[NSData class]] && [value length])
#define UIColorFYExistFlag(value)           (value && [value isKindOfClass:[UIColor class]])
#define UIImageFYExistFlag(value)           (value && [value isKindOfClass:[UIImage class]])
#define NSDictionaryFYExistFlag(dict)       (dict  && [dict isKindOfClass:[NSDictionary class]] && [dict count])
#define NSArrayFYExistFlag(array)           (array && [array isKindOfClass:[NSArray class]] && [array count])


///主线程
#define MAQ(code) dispatch_async(dispatch_get_main_queue(), ^{code});
#define MAQBlock(block) dispatch_async(dispatch_get_main_queue(), block);
///异步 子线程
#define ASQ(code) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{code});
#define ASQBlock(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);

///异步子线程 -> 主线程   代码
#define     AMC(globalCode, mainCode)                                               \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{    \
    globalCode                                                                      \
    dispatch_async(dispatch_get_main_queue(), ^{                                    \
        mainCode                                                                    \
    });                                                                             \
});                                                                                 \

///异步子线程 -> 主线程   代码块
#define     AMB(globalBlock, mainBlock)                                             \
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{    \
    if (globalBlock) {                                                              \
        globalBlock();                                                              \
    }                                                                               \
    dispatch_async(dispatch_get_main_queue(), ^{                                    \
        if (mainBlock) {                                                            \
            mainBlock();                                                            \
        }                                                                           \
    });                                                                             \
});


#endif /* HeaderDefine_h */
