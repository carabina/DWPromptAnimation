//
//  ViewController.m
//  DWPromptAnimationTest
//
//  Created by dwang_sui on 16/8/26.
//  Copyright © 2016年 dwang_sui. All rights reserved.
//

#import "ViewController.h"
#import "DWPromptAnimation.h"
#import "TestViewController.h"

@interface ViewController ()

@property (strong, nonatomic) DWPromptAnimation *animation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
}

- (DWPromptAnimation *)animation {
    
    if (!_animation) {
        
        _animation = [[DWPromptAnimation alloc] init];
        
    }
    
    return _animation;
}

- (IBAction)start:(id)sender {
 
//    self.animation.alpha = 0.8;
    
//    self.animation.animationPicturesViewColor = [UIColor colorWithRed:167/255 green:165/255 blue:167/255 alpha:1];
    
//
//    self.animation.animationPicturesViewRect = CGRectMake(50, 50, 200, 300);
    
    [self.animation dw_ShowPromptAnimation:self.view];
    
//    [DWPromptAnimation dw_ShowPromptAnimation:self.view];
    
    [self performSelector:@selector(next) withObject:nil afterDelay:5.25];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    
    [DWPromptAnimation dw_stopPromptAnimation];
    
}

- (void)next {
    
    [DWPromptAnimation dw_stopPromptAnimation];
    
//    [self presentViewController:[[TestViewController alloc] init] animated:YES completion:nil];
    
}

@end
