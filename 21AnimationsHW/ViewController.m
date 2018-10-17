//
//  ViewController.m
//  21AnimationsHW
//
//  Created by Eduard Galchenko on 10/7/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view1.backgroundColor = [self randomColor];
    self.view2.backgroundColor = [self randomColor];
    self.view3.backgroundColor = [self randomColor];
    self.view4.backgroundColor = [self randomColor];
    
    [self moveView:self.views withClockwiseDirection:arc4random() % 2];
    
}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    

    
    [UIView animateWithDuration:5
                          delay:1
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                        self.view1.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view1.frame) / 2, 265);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:1
                        options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view2.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view2.frame) / 2, 435);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:1
                        options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view3.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view3.frame) / 2, 605);
                     }
                     completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:5
                          delay:1
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
                         self.view4.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.view4.frame) / 2, 775);
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

- (void) moveView:(NSArray*) views withClockwiseDirection:(BOOL) clockwiseDirection {
    [UIView animateWithDuration:5.f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         UIView* begintView = views[0];
                         UIView* nextView = views[[views count] - 1];
                         
                         if (clockwiseDirection) {
                             
                             CGPoint center = begintView.center;
                             UIColor* color = begintView.backgroundColor;
                             
                             for (int i = 0; i < [views count] - 1; i++) {
                                 UIView* view = views[i];
                                 UIView* nextView = views[i + 1];
                                 
                                 view.backgroundColor = nextView.backgroundColor;
                                 view.center = nextView.center;
                             }
                             nextView.backgroundColor = color;
                             nextView.center = center;
                             
                         } else {
                             CGPoint center = nextView.center;
                             UIColor* color = nextView.backgroundColor;
                             
                             for (long i = [views count] - 1; i > 0; i--) {
                                 UIView* view = views[i];
                                 UIView* previousView = views[i - 1];
                                 
                                 view.backgroundColor = previousView.backgroundColor;
                                 view.center = previousView.center;
                             }
                             
                             begintView.backgroundColor = color;
                             begintView.center = center;
                         }
                         
                     }
                     completion:^(BOOL finished) {
                         
                         __weak NSArray* tmpView = views;
                         [self moveView:tmpView withClockwiseDirection:arc4random() % 2];
                         
                     }];
}
@end
