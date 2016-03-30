//
//  ViewController.m
//  AutoLayout&SizeClass
//
//  Created by 邱少依 on 16/3/30.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "ViewController.h"
#define KDeviceOrientation [UIApplication sharedApplication].statusBarOrientation

#define  KDeviceType [UIDevice currentDevice].userInterfaceIdiom

#define  KScreenSize [UIScreen mainScreen].bounds.size

#define  KScreenOrigin [UIScreen mainScreen].bounds.origin
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
// 1、storyboard、xib适配大全   https://www.raywenderlich.com/113768/adaptive-layout-tutorial-in-ios-9-getting-started
    
// 2、代码适配大全：ios开发xcode6 ipad横竖屏判断,怎么自适应控件
    if (KDeviceOrientation == UIDeviceOrientationPortrait ) {//竖屏
        if (KDeviceType == UIUserInterfaceIdiomPhone) {//iphone

        } else if (KDeviceType == UIUserInterfaceIdiomPad) {//ipad
            
        }
    } else if (KDeviceOrientation == UIDeviceOrientationLandscapeLeft ||KDeviceOrientation == UIDeviceOrientationLandscapeRight){//横屏
        if (KDeviceType == UIUserInterfaceIdiomPhone) {//iphone
            
        } else if (KDeviceType == UIUserInterfaceIdiomPad) {//ipad
            
        }
    }
//   强制改变view的Transform
//    CGAffineTransform rotationView =  [self  getNewRotaion];
    
}

- (CGAffineTransform ) getNewRotaion{
    CGPoint centerPoint = CGPointMake(KScreenOrigin.x + KScreenSize.width*0.5, KScreenOrigin.y+KScreenSize.height*0.5);
    if (KDeviceOrientation == UIDeviceOrientationLandscapeLeft) {
        
        return CGAffineTransformMakeRotation(M_PI*1.5);
    } else if (KDeviceOrientation == UIDeviceOrientationLandscapeRight) {
        return CGAffineTransformMakeRotation(M_PI*0.5);
    } else if (KDeviceOrientation == UIDeviceOrientationPortraitUpsideDown) {
        return CGAffineTransformMakeRotation(-M_PI);
    } else {
        
        return CGAffineTransformIdentity;
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
