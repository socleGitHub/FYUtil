//
//  UIView+FYView.h
//  FYUtil
//
//  Created by Hubei CA on 2019/12/20.
//  Copyright © 2019 FangYuan. All rights reserved.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FYView)

#pragma mark - frame center layer About
/// View->frame->orign->x
@property(nonatomic,assign)CGFloat  fy_x;
/// View->frame->orign->y
@property(nonatomic,assign)CGFloat  fy_y;
/// View->frame->size->width
@property(nonatomic,assign)CGFloat  fy_w;
/// View->frame->size->height
@property(nonatomic,assign)CGFloat  fy_h;

/// View->frame->orign
@property(nonatomic,assign)CGPoint  fy_orign;
/// View->frame->size
@property(nonatomic,assign)CGSize   fy_size;

/// View->center->x
@property(nonatomic,assign)CGFloat  fy_centerX;
/// View->center->y
@property(nonatomic,assign)CGFloat  fy_centerY;


/// CGRectMaxX(View->frame)
@property(nonatomic,assign,readonly)CGFloat  fy_maxX;
/// CGRectMaxY(View->frame)
@property(nonatomic,assign,readonly)CGFloat  fy_maxY;


/// View->layer->borderWidth
@property(nonatomic,assign)CGFloat      fy_borderWidth;
/// View->layer->cornerRadius
@property(nonatomic,assign)CGFloat      fy_cornerRadius;
/// View->layer->borderColor
@property(nonatomic,strong)UIColor     *fy_borderColor;
#pragma mark frame center layer About
#pragma mark -


#pragma mark - view Method

/// View布局方法
/// @param block 对view处理的Block
-(instancetype)layoutFyView:(void(^ _Nullable)(id _Nonnull view))block;

/// 添加响应事件
/// @param target 响应目标
/// @param action 响应方法
-(instancetype)addFyTapTarget:(id)target action:(SEL)action;

/// 添加至SuperView
/// @param superView superview视图
-(instancetype)addToFySuperView:(UIView *)superView;

/// 添加底部线条
-(instancetype)addFyLine;
/// 添加线条 A点到B点
/// @param pointA 起始点
/// @param pointB 结束点
-(instancetype)addFyLineFromPA:(CGPoint)pointA toPB:(CGPoint)pointB;
/// /// 添加线条 A点到B点
/// @param color 颜色
/// @param pointA 起始点
/// @param pointB 结束点
-(instancetype)addFyLineColor:(UIColor *)color fromPA:(CGPoint)pointA toPB:(CGPoint)pointB;
/// /// 添加线条 A点到B点
/// @param color 颜色
/// @param width 宽度
/// @param pointA 起始点
/// @param pointB 结束点
-(instancetype)addFyLineColor:(UIColor *)color width:(CGFloat)width fromPA:(CGPoint)pointA toPB:(CGPoint)pointB;


/// 类构造函数
/// @param superView superview视图
+(instancetype)viewFySuperView:(UIView *)superView;
/// 类构造函数
/// @param superView superview视图
/// @param block 对view处理的Block
+(instancetype)viewFySuperView:(UIView *)superView layoutView:(void(^ _Nullable)(UIView * _Nonnull view))block;
#pragma mark  view Method


#pragma mark - layout
//需先加到父视图
/// 水平居中 Horizontal
-(void)alignHCenter;

/// 垂直居中 Vertical
-(void)alignVCenter;

/// 水平垂直居中 center
-(void)alignCenter;
#pragma mark layout
 
@end

NS_ASSUME_NONNULL_END
