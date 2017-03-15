//
//  ZJNetworkTool.h
//  netEasyNews
//
//  Created by 钟健 on 2017/3/14.
//  Copyright © 2017年 zhongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFHTTPSessionManager.h>
@interface ZJNetworkTool : AFHTTPSessionManager
+ (instancetype)shareInstance;
@end
