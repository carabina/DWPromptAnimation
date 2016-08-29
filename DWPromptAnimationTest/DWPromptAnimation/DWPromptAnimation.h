//
//  DWPromptAnimation.h
//  DWPromptAnimationTest
//
//  Created by dwang_sui on 16/8/26.
//  Copyright © 2016年 dwang_sui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DWPromptAnimation : NSObject

/** 蒙板颜色 */
@property (strong, nonatomic) UIColor *animationPicturesViewColor;

/** 设置完成一次的时间 */
@property (assign, nonatomic) NSTimeInterval animationDuration;

/** 修改默认蒙板alpha */
@property (assign, nonatomic) CGFloat alpha;

/** 修改蒙板默认Rect尺寸 */
@property (assign, nonatomic) CGRect animationPicturesViewRect;

/**
 *  @author dwang
 *
 *  开始显示动画
 *
 *  @param view 动画添加位置
 */
+ (void)dw_ShowPromptAnimation:(UIView *)view;

/**
 *  @author dwang
 *
 *  停止动画
 */
+ (void)dw_stopPromptAnimation;

/**
 *  @author dwang
 *
 *  开始显示动画/可以自定义一些属性
 *
 *  @param view 动画添加位置
 */
- (void)dw_ShowPromptAnimation:(UIView *)view;

@end
