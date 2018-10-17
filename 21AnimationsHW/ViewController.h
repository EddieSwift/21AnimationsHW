//
//  ViewController.h
//  21AnimationsHW
//
//  Created by Eduard Galchenko on 10/7/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *views;



@end

