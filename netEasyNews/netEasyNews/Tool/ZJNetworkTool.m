//
//  ZJNetworkTool.m
//  netEasyNews
//
//  Created by 钟健 on 2017/3/14.
//  Copyright © 2017年 zhongjian. All rights reserved.
//

#import "ZJNetworkTool.h"

@implementation ZJNetworkTool
//创建单例
+ (instancetype)shareInstance{
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *baseURL = [NSURL URLWithString:@"http://c.m.163.com/nc/ad/"];
        instance = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    });
    return instance;
}
@end
