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

- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    view.backgroundColor = UIColor.whiteColor;
    self.view = view;
    
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
    
    // redView 在父视图上：上左下右（50，50，-200，-50）
    self.redView.edge = UIEdgeInsetsMake(50, 50, -200, -50);
    /**
     * grayView 顶部距离 redView 底边 50
     * grayView 左右边 与 redView 一样
     * grayView 底边距离 父视图上边 50
     */
    self.grayView.top = self.redView.bottom + 50;
    self.grayView.left = self.redView.left;
    self.grayView.right = self.redView.right;
    self.grayView.bottomSpace = -50;
    /**
     * blueView 位于父视图redView中心
     * blueView 尺寸 100，100
     */
    self.blueView.center = self.redView.middle;
    self.blueView.size = CGSizeMake(100, 100);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

@end
