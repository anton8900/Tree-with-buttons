//
//  ViewController.m
//  Tree with buttons
//
//  Created by Anton Skutov on 10/2/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)growAction
{
    [_tree grow];
    [_label setText:[NSString stringWithFormat: @"Current number of apples: %lu",[_tree getSize]]];
    //_grow.backgroundColor = [UIColor brownColor];
}

-(void)shakeAction
{
    [_tree shake];
    [_label setText:[NSString stringWithFormat: @"Current number of apples: %lu",[_tree getSize]]];
    //_shake.backgroundColor = [UIColor brownColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _shake = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _shake.frame = CGRectMake(120.0, 260.0, 100.0, 30.0);
    [_shake setTitle:@"Shake" forState:UIControlStateNormal];
    _shake.backgroundColor = [UIColor blackColor];
    [_shake setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ];
    [_shake addTarget:self action:@selector(shakeAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_shake];
    
    _grow = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _grow.frame = CGRectMake(120.0, 220.0, 100.0, 30.0);
    [_grow setTitle:@"Grow" forState:UIControlStateNormal];
    _grow.backgroundColor = [UIColor blackColor];
    [_grow setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ];
    [_grow addTarget:self action:@selector(growAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_grow];
    
    _tree=[Tree new];
    
    _label=[[UILabel alloc] initWithFrame:CGRectMake(60, 180, 300, 30)];
    [_label setText:[NSString stringWithFormat: @"Current number of apples: %lu",[_tree getSize]]];
    [self.view addSubview:_label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
