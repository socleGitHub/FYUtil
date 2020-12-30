//
//  UIImageView+FYImageView.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (FYImageView)

- (instancetype)layoutFyView:(void (^)(UIImageView * _Nonnull imageView))block;
/// 设置图片
/// @param image 图片
-(instancetype)setFyImage:(UIImage *)image;

/// 设置图片
/// @param imageName 图片名称
-(instancetype)setFyImageName:(NSString *)imageName;

/// 设置图片
/// @param imagePath 图片路径
-(instancetype)setFyImagePath:(NSString *)imagePath;

#pragma mark - 构造方法

/// 构造方法 imageName
/// @param imageName 图片名称
-(instancetype)initFyImageName:(NSString *)imageName;

/// 构造方法 imagePath
/// @param imagePath 图片路径
-(instancetype)initFyImagePath:(NSString *)imagePath;

/// 构造方法 imageName
/// @param imageName 图片名称
+(instancetype)imageViewFyImageName:(NSString *)imageName;

/// 构造方法 imagePath
/// @param imagePath 图片路径
+(instancetype)imageViewFyImagePath:(NSString *)imagePath;

@end

NS_ASSUME_NONNULL_END
