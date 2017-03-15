//
//  HeadLines.h
//  netEasyNews
//
//  Created by 钟健 on 2017/3/14.
//  Copyright © 2017年 zhongjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeadLines : NSObject
+ (void)getHeadlLinesModelWithSuccess:(void(^)(NSArray *))success fail:(void(^)(NSError *))fail;
@end
