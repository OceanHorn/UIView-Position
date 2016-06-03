//
//  ViewController.m
//  Demo
//
//  Created by 郭玉富 on 16/6/2.
//  Copyright © 2016年 郭玉富. All rights reserved.
//

#import "ViewController.h"
@import Masonry;

#import "LineView.h"
#import "RectView.h"
#import "OvalView.h"
#import "RoundedRectView.h"
#import "ArcView.h"
#import "QuadCurveView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUIComponent];
}

- (void)setupUIComponent {
    LineView *line = [[LineView alloc] init];
    [self.view addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(100));
        make.left.equalTo(self.view.mas_left).offset(30);
        make.top.equalTo(self.view.mas_top).offset(30);
    }];
    
    LineView *line1 = [[LineView alloc] init];
    [self.view addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(120));
        make.left.equalTo(self.view.mas_left).offset(30);
        make.top.equalTo(self.view.mas_top).offset(150);
    }];
    
    RectView *rect1 = [[RectView alloc] init];
    [self.view addSubview:rect1];
    [rect1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(90));
        make.left.equalTo(self.view.mas_left).offset(130);
        make.top.equalTo(self.view.mas_top).offset(20);
    }];
    
    OvalView *oval1 = [[OvalView alloc] init];
    [self.view addSubview:oval1];
    [oval1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(80));
        make.left.equalTo(self.view.mas_left).offset(240);
        make.top.equalTo(self.view.mas_top).offset(20);
    }];
    
    OvalView *oval2 = [[OvalView alloc] init];
    [self.view addSubview:oval2];
    [oval2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(80));
        make.height.equalTo(@(100));
        make.left.equalTo(self.view.mas_left).offset(240);
        make.top.equalTo(self.view.mas_top).offset(110);
    }];
    
    
    RoundedRectView *roundedRect = [[RoundedRectView alloc] init];
    [self.view addSubview:roundedRect];
    [roundedRect mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(80));
        make.left.equalTo(self.view.mas_left).offset(10);
        make.top.equalTo(self.view.mas_top).offset(220);
    }];
    
    
    ArcView *arcView = [[ArcView alloc] init];
    [self.view addSubview:arcView];
    [arcView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(80));
        make.left.equalTo(self.view.mas_left).offset(110);
        make.top.equalTo(self.view.mas_top).offset(220);
    }];
    
    QuadCurveView *quadCurveView = [[QuadCurveView alloc] init];
    [self.view addSubview:quadCurveView];
    [quadCurveView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@(80));
        make.left.equalTo(self.view.mas_left).offset(210);
        make.top.equalTo(self.view.mas_top).offset(220);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
