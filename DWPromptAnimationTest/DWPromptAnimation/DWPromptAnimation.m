//
//  DWPromptAnimation.m
//  DWPromptAnimationTest
//
//  Created by dwang_sui on 16/8/26.
//  Copyright © 2016年 dwang_sui. All rights reserved.
//

#import "DWPromptAnimation.h"

/** 序列帧动画图 */
UIImageView *animationPictures;

/** 蒙板视图 */
UIView *animationPicturesView;

@implementation DWPromptAnimation

#pragma mark ---开始
+ (void)dw_ShowPromptAnimation:(UIView *)view {
    
    animationPicturesView = [[UIView alloc] initWithFrame:view.frame];;
    
    animationPictures = [[UIImageView alloc] initWithFrame:CGRectMake(animationPicturesView.center.x-animationPicturesView.frame.size.width/4, animationPicturesView.center.y-animationPicturesView.frame.size.width/4, animationPicturesView.frame.size.width/2, animationPicturesView.frame.size.width/2)];
    
    animationPictures.layer.cornerRadius = animationPictures.frame.size.width / 2;
    
    animationPictures.clipsToBounds = YES;
    
    animationPicturesView.backgroundColor = [UIColor colorWithRed:167/255 green:165/255 blue:167/255 alpha:0.8];
    
    [animationPicturesView addSubview:animationPictures];
    
    [view addSubview:animationPicturesView];
    
    //判断,之前的动画没有运行结束,则不执行此动画
    if (animationPictures.isAnimating) return;
    
    //Array数组,里面存放的是UIImage对象
    NSMutableArray *muArray = [NSMutableArray array];
    
    for (int i = 0; i < 12; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"cymbal_%02d.jpg",i];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
        [muArray addObject:image];
    }
    
    animationPictures.animationImages = muArray;
    
    animationPictures.animationRepeatCount = 0;
    
    // 设置图片的运行时间
    animationPictures.animationDuration = animationPictures.animationImages.count * 0.05;
    
    [animationPictures startAnimating];
    
}

- (void)dw_ShowPromptAnimation:(UIView *)view {
    
    CGFloat number;
    
    
    if (self.animationPicturesViewRect.size.width) {
        
        animationPicturesView = [[UIView alloc] initWithFrame:self.animationPicturesViewRect];
        
        number = 2;
        
    }else {
    
       animationPicturesView = [[UIView alloc] initWithFrame:view.frame];
    
        number = 4;
        
    }
    
    animationPictures = [[UIImageView alloc] initWithFrame:CGRectMake(animationPicturesView.center.x-animationPicturesView.frame.size.width/number, animationPicturesView.center.y-animationPicturesView.frame.size.width/number, animationPicturesView.frame.size.width/2, animationPicturesView.frame.size.width/2)];
    
    animationPictures.layer.cornerRadius = animationPictures.frame.size.width / 2;
    
    animationPictures.clipsToBounds = YES;
    
    if (self.animationPicturesViewColor) {
        
        animationPicturesView.backgroundColor = self.animationPicturesViewColor;
        
    }else {
    
        if (self.alpha && self.alpha >= 0) {
            
            animationPicturesView.backgroundColor = [UIColor colorWithRed:167/255 green:165/255 blue:167/255 alpha:self.alpha];
            
        }else {
        
            animationPicturesView.backgroundColor = [UIColor colorWithRed:167/255 green:165/255 blue:167/255 alpha:0.8];
    
        }
    }
    
    [animationPicturesView addSubview:animationPictures];
    
    [view addSubview:animationPicturesView];
    
    if (animationPictures.isAnimating) return;
    
    //Array数组,里面存放的是UIImage对象
    NSMutableArray *muArray = [NSMutableArray array];
    
    for (int i = 0; i < 12; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"cymbal_%02d.jpg",i];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
        [muArray addObject:image];
    }
    
    animationPictures.animationImages = muArray;
    
    animationPictures.animationRepeatCount = 0;
    
    // 设置图片的运行时间
    if (self.animationDuration && self.animationDuration > 0) {
        
        animationPictures.animationDuration = animationPictures.animationImages.count * self.animationDuration;
        
    }else {
    
    animationPictures.animationDuration = animationPictures.animationImages.count * 0.05;
    
    }
    
    [animationPictures startAnimating];
    
}

#pragma mark ---停止
+ (void)dw_stopPromptAnimation {
    
    animationPictures.animationImages = nil;
    
    [animationPictures stopAnimating];
    
    [animationPicturesView removeFromSuperview];
    
}

@end
