//
//  ViewController.m
//  netEasyNews
//
//  Created by 钟健 on 2017/3/14.
//  Copyright © 2017年 zhongjian. All rights reserved.
//

#import "ViewController.h"
#import "HeadLines.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [HeadLines getHeadlLinesModelWithSuccess:^(NSArray *headLinesArray) {
        NSLog(@"%@",headLinesArray);
    } fail:^(NSError *error) {
        
    }];
}

@end
