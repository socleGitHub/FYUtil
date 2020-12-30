//
//  UIImageView+FYImageView.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/23.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UIImageView+FYImageView.h"
#import "UIView+FYView.h"
#import "HeaderDefine.h"

@implementation UIImageView (FYImageView)

- (instancetype)layoutFyView:(void (^)(UIImageView * _Nonnull imageView))block{
    WEAK_SELF(self,weakSelf)
    if (block) {
        block(weakSelf);
    }
    return self;
}

-(instancetype)setFyImage:(UIImage *)image{
    if (UIImageFYExistFlag(image)) {
        [self setImage:image];
    }
    return self;
}
-(instancetype)setFyImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [self setFyImage:image];
}
-(instancetype)setFyImagePath:(NSString *)imagePath{
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    return [self setFyImage:image];
}

-(instancetype)initFyImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    if (UIImageFYExistFlag(image)) {
        return [self initWithImage:image];
    }
    return [self init];
}
-(instancetype)initFyImagePath:(NSString *)imagePath{
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    if (UIImageFYExistFlag(image)) {
        return [self initWithImage:image];
    }
    return [self init];
}

+(instancetype)imageViewFyImageName:(NSString *)imageName{
    return [[self alloc] initFyImageName:imageName];
}
+(instancetype)imageViewFyImagePath:(NSString *)imagePath{
    return [[self alloc] initFyImagePath:imagePath];
}

@end
