//
//  UIAlertController+FYAlertController.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/24.
//  Copyright © 2019 FangYuan. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define     TwoButtonTitle1     @"取消"
#define     TwoButtonTitle2     @"确认"

#define     OneButtonTitle      @"知道了"


#define     FyAlertOneButtonBlock(title, msg, viewController, block)    \
[[UIAlertController alertOneButtonFyTitle:title message:msg actionBlock:(block)]  showByController:viewController];

#define     FyAlertOneButtonCode(title, msg, viewController, code)      \
[[UIAlertController alertOneButtonFyTitle:title message:msg actionBlock:^{code}]  showByController:viewController];

#define     FyAlertShowOneButtonBlock(title, msg, block)    \
[[UIAlertController alertOneButtonFyTitle:title message:msg actionBlock:(block)]  showByController:[UIApplication sharedApplication].delegate.window.rootViewController];

#define     FyAlertShowOneButtonCode(title, msg, code)      \
[[UIAlertController alertOneButtonFyTitle:title message:msg actionBlock:^{code}]  showByController:[UIApplication sharedApplication].delegate.window.rootViewController];


#define     FyAlertTwoButtonBlock(title, msg, viewController, block)    \
[[UIAlertController alertTwoButtonFyTitle:title message:msg actionBlock:(block)]  showByController:viewController];

//#define     FyAlertTwoButtonCode(title, msg, viewController, code)      \
[[UIAlertController alertTwoButtonFyTitle:title message:msg actionBlock:^(NSUInteger index){code}]  showByController:viewController];

#define     FyAlertShowTwoButtonBlock(title, msg, block)    \
[[UIAlertController alertTwoButtonFyTitle:title message:msg actionBlock:(block)]  showByController:[UIApplication sharedApplication].delegate.window.rootViewController];

//#define     FyAlertShowTwoButtonCode(title, msg, code)      \
[[UIAlertController alertTwoButtonFyTitle:title message:msg actionBlock:^(NSUInteger index){code}]  showByController:[UIApplication sharedApplication].delegate.window.rootViewController];


@interface UIAlertController (FYAlertController)

#pragma mark Alert

/// Alert弹框 【TwoButtonTitle1】【TwoButtonTitle2】
/// @param title 标题
/// @param message 信息
/// @param buttonAction 按钮响应
+(instancetype)alertTwoButtonFyTitle:(NSString *)title message:(NSString *)message actionBlock:(nullable void(^)(NSUInteger index))buttonAction;


/// Alert弹框 【OneButtonTitle】
/// @param title 标题
/// @param message 信息
/// @param buttonAction 按钮响应
+(instancetype)alertOneButtonFyTitle:(NSString *)title message:(NSString *)message actionBlock:(nullable void(^)(void))buttonAction;


/// present弹框 VC
/// @param viewController 当前页面 VC
-(void)showByController:(nonnull UIViewController *)viewController;

#pragma mark ActionSheet

+(instancetype)actionSheetFyTitle:(NSString *)title message:(NSString *)message actions:(nullable NSArray<UIAlertAction *> *)alertActions;

+(instancetype)actionSheetFyTitle:(NSString *)title message:(NSString *)message actionsBlock:(nullable NSArray<UIAlertAction *> * (^)(void))actionsBlock;

@end

NS_ASSUME_NONNULL_END
