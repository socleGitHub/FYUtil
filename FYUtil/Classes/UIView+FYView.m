//
//  UIView+FYView.m
//  FYUtil
//
//  Created by Hubei CA on 2019/12/20.
//  Copyright © 2019 FangYuan. All rights reserved.
//

#import "UIView+FYView.h"
#import "HeaderDefine.h"

#define         ViewDefaultColor        UIColorFromRGB(0x909090)

@implementation UIView (FYView)

#pragma mark - frame center layer About
/// fy_x
-(CGFloat)fy_x{
    return CGRectGetMinX(self.frame);
}
-(void)setFy_x:(CGFloat)fy_x{
    CGPoint orign = self.fy_orign;
    orign.x = fy_x;
    self.fy_orign = orign;
}
/// fy_y
-(CGFloat)fy_y{
    return CGRectGetMinY(self.frame);
}
-(void)setFy_y:(CGFloat)fy_y{
    CGPoint orign = self.fy_orign;
    orign.y = fy_y;
    self.fy_orign = orign;
}
/// fy_w
-(CGFloat)fy_w{
    return CGRectGetWidth(self.frame);
}
-(void)setFy_w:(CGFloat)fy_w{
    CGSize size  = self.fy_size;
    size.width   = fy_w;
    self.fy_size = size;
}
/// fy_h
-(CGFloat)fy_h{
    return CGRectGetHeight(self.frame);
}
-(void)setFy_h:(CGFloat)fy_h{
    CGSize size  = self.fy_size;
    size.height  = fy_h;
    self.fy_size = size;
}

/// fy_orign
-(CGPoint)fy_orign{
    return self.frame.origin;
}
-(void)setFy_orign:(CGPoint)fy_orign{
    CGRect frame = self.frame;
    frame.origin = fy_orign;
    self.frame   = frame;
}
/// fy_size
-(CGSize)fy_size{
    return self.frame.size;
}
-(void)setFy_size:(CGSize)fy_size{
    CGRect frame = self.frame;
    frame.size = fy_size;
    self.frame   = frame;
}

/// fy_centerX
-(CGFloat)fy_centerX{
    return self.center.x;
}
-(void)setFy_centerX:(CGFloat)fy_centerX{
    CGPoint center = self.center;
    center.x = fy_centerX;
    self.center = center;
}
/// fy_centerY
-(CGFloat)fy_centerY{
    return self.center.y;
}
-(void)setFy_centerY:(CGFloat)fy_centerY{
    CGPoint center = self.center;
    center.y = fy_centerY;
    self.center = center;
}


/// fy_maxX
-(CGFloat)fy_maxX{
    return CGRectGetMaxX(self.frame);
}
/// fy_maxY
-(CGFloat)fy_maxY{
    return CGRectGetMaxY(self.frame);
}


/// fy_borderWidth
-(CGFloat)fy_borderWidth{
    return self.layer.borderWidth;
}
-(void)setFy_borderWidth:(CGFloat)fy_borderWidth{
    self.layer.borderWidth = fy_borderWidth;
}
/// fy_cornerRadius
-(CGFloat)fy_cornerRadius{
    return self.layer.cornerRadius;
}
-(void)setFy_cornerRadius:(CGFloat)fy_cornerRadius{
    self.layer.cornerRadius = fy_cornerRadius;
}
/// fy_borderColor
-(UIColor *)fy_borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}
-(void)setFy_borderColor:(UIColor *)fy_borderColor{
    self.layer.borderColor = fy_borderColor.CGColor;
}
#pragma mark frame center layer About

#pragma mark - view Method
-(instancetype)layoutFyView:(void (^)(id _Nonnull))block{
    WEAK_SELF(self,weakSelf)
    if (block) {
        block(weakSelf);
    }
    return self;
}

-(instancetype)addFyTapTarget:(id)target action:(SEL)action{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    tap.numberOfTouchesRequired = 1;
    tap.numberOfTapsRequired    = 1;
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
    return self;
}

-(instancetype)addToFySuperView:(UIView *)superView{
    [superView addSubview:self];
    return self;
}

-(instancetype)addFyLine{
    return [self addFyLineFromPA:CGPointMake(0, self.fy_h) toPB:CGPointMake(self.fy_w, self.fy_h)];
}

-(instancetype)addFyLineFromPA:(CGPoint)pointA toPB:(CGPoint)pointB{
    return [self addFyLineColor:ViewDefaultColor fromPA:pointA toPB:pointB];
}

-(instancetype)addFyLineColor:(UIColor *)color fromPA:(CGPoint)pointA toPB:(CGPoint)pointB{
    return [self addFyLineColor:color width:1.f fromPA:pointA toPB:pointB];
}

-(instancetype)addFyLineColor:(UIColor *)color width:(CGFloat)width fromPA:(CGPoint)pointA toPB:(CGPoint)pointB{
    CAShapeLayer *lineLayer = [CAShapeLayer layer];
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    [linePath moveToPoint:pointA];
    [linePath addLineToPoint:pointB];
    lineLayer.strokeColor = color.CGColor;
    lineLayer.lineWidth   = width;
    lineLayer.path = linePath.CGPath;
    [self.layer addSublayer:lineLayer];
    return self;
}


+(instancetype)viewFySuperView:(UIView *)superView{
    UIView *view = [[UIView alloc] init];
    [superView addSubview:view];
    return view;
}

+(instancetype)viewFySuperView:(UIView *)superView layoutView:(void (^ _Nullable)(UIView * _Nonnull))block{
    UIView *view = [[self alloc] init];
    [superView addSubview:view];
    WEAK_SELF(view,weakSelf)
    if (block) {
        block(weakSelf);
    }
    return view;
}

#pragma mark  view Method

/// 水平居中 Horizontal
-(void)alignHCenter{
    if (self.superview) {
        self.fy_centerX = CGRectGetMidX(self.superview.bounds);
    }else{
        NSLog(@"请先添加至父视图");
    }
}

/// 垂直居中 Vertical
-(void)alignVCenter{
    if (self.superview) {
        self.fy_centerY = CGRectGetMidY(self.superview.bounds);
    }else{
        NSLog(@"请先添加至父视图");
    }
}

/// 水平垂直居中 center
-(void)alignCenter{
    if (self.superview) {
        self.center = CGPointMake(CGRectGetMidX(self.superview.bounds), CGRectGetMidY(self.superview.bounds));
    }else{
        NSLog(@"请先添加至父视图");
    }
}

@end
