//
//  ViewController.m
//  21AnimationsHW
//
//  Created by Eduard Galchenko on 10/7/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (weak, nonatomic) UIView *myView1;
//@property (weak, nonatomic) UIView *myView2;
//@property (weak, nonatomic) UIView *myView3;
//@property (weak, nonatomic) UIView *myView4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view1.backgroundColor = [self randomColor];
    self.view2.backgroundColor = [self randomColor];
    self.view3.backgroundColor = [self randomColor];
    self.view4.backgroundColor = [self randomColor];
    
    //self.myView1 = _view1;
    

}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
//    [UIView animateWithDuration:5 animations:^{
//
//        self.view1.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view1.frame) / 2, 70);
//
//    }];
    
    [UIView animateWithDuration:5
                          delay:3
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                        self.view1.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view1.frame) / 2, 70);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:3
                        options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view2.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view2.frame) / 2, 230);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:3
                        options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view3.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view3.frame) / 2, 390);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:3
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view4.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view4.frame) / 2, 550);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
}

- (UIColor*) randomColor {
    CGFloat r = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat g = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat b = (CGFloat)(arc4random() % 256) / 255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}


@end
