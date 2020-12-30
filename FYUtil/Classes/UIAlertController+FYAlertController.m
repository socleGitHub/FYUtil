//
//  UIAlertController+FYAlertController.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/24.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UIAlertController+FYAlertController.h"
#import "HeaderDefine.h"


@implementation UIAlertController (FYAlertController)

+ (instancetype)alertTwoButtonFyTitle:(NSString *)title message:(NSString *)message actionBlock:(nullable void (^)(NSUInteger))buttonAction{
    UIAlertController *alertVC = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (alertVC) {
        [alertVC addAction:[UIAlertAction actionWithTitle:TwoButtonTitle1 style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (buttonAction) {
                buttonAction(0);
            };
        }]];
        
        [alertVC addAction:[UIAlertAction actionWithTitle:TwoButtonTitle2 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (buttonAction) {
                buttonAction(1);
            };
        }]];
    }
    return alertVC;
}

+ (instancetype)alertOneButtonFyTitle:(NSString *)title message:(NSString *)message actionBlock:(void (^)(void))buttonAction{
    UIAlertController *alertVC = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (alertVC) {
        [alertVC addAction:[UIAlertAction actionWithTitle:OneButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (buttonAction) {
                buttonAction();
            };
        }]];
    }
    return alertVC;
}

- (void)showByController:(UIViewController *)viewController{
    if (viewController) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [viewController presentViewController:self animated:NO completion:nil];
        });
    }else{
        NSLog(@"viewController is nil");
    }
}


+ (instancetype)actionSheetFyTitle:(NSString *)title message:(NSString *)message actions:(NSArray<UIAlertAction *> *)alertActions{
    UIAlertController *sheetVC = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    if (sheetVC && NSArrayFYExistFlag(alertActions)) {
        [alertActions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [sheetVC addAction:obj];
        }];
    }
    return sheetVC;
}

+ (instancetype)actionSheetFyTitle:(NSString *)title message:(NSString *)message actionsBlock:(NSArray<UIAlertAction *> * _Nonnull (^)(void))actionsBlock{
    UIAlertController *sheetVC = [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    NSArray<UIAlertAction *> *alertActions = nil;
    if (actionsBlock) {
        alertActions = actionsBlock();
    }
    if (sheetVC && NSArrayFYExistFlag(alertActions)) {
        [alertActions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [sheetVC addAction:obj];
        }];
    }
    return sheetVC;
}

@end
