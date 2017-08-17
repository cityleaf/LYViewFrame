//
//  UIView+Frame.h
//  LYTest
//
//  Created by liuyu on 2017/8/17.
//  Copyright © 2017年 刘宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

// origin
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign, readonly) CGPoint middle;

// size
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

// padding
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat right;

@end
