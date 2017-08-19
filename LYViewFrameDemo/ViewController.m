//
//  ViewController.m
//  LYViewFrameDemo
//
//  Created by 刘宇 on 2017/8/19.
//  Copyright © 2017年 刘宇. All rights reserved.
//

#import "ViewController.h"
#import "ViewFrame.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *grayView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redView = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = UIColor.redColor;
        view;
    });
    self.blueView = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = UIColor.blueColor;
        view;
    });
    self.grayView = ({
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = UIColor.grayColor;
        view;
    });
    /**
     * redView 在 self.view 上
     * grayView 在 self.view 上
     * blueView 在 redView 上
     */
    [self.view addSubview:self.redView];
    [self.view addSubview:self.grayView];
    [self.redView addSubview:self.blueView];
    
    // redView
    self.redView.edge = UIEdgeInsetsMake(50, 50, -300, -50);
    
    // blueView
    self.blueView.width = self.blueView.height = 100;
    self.blueView.center = self.redView.middle;
    
    // grayView
    self.grayView.top = self.redView.bottom + 50;
    self.grayView.left = 100;
    self.grayView.dRight = -100;
    self.grayView.dBottom = -100;
    
    
}



@end
