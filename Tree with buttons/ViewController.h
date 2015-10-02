//
//  ViewController.h
//  Tree with buttons
//
//  Created by Anton Skutov on 10/2/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tree.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) UIButton *shake;
@property (strong, nonatomic) UIButton *grow;
@property (strong, nonatomic) UILabel *label;
@property (nonatomic) Tree* tree;
-(void)shakeAction;
-(void)growAction;
@end

