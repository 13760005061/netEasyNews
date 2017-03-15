//
//  HeadLines.m
//  netEasyNews
//
//  Created by 钟健 on 2017/3/14.
//  Copyright © 2017年 zhongjian. All rights reserved.
//

#import "HeadLines.h"
#import "ZJNetworkTool.h"

@interface HeadLines ()

/*
 *  标题
 */
@property (nonatomic, copy) NSString *title;

/*
 *  图片
 */
@property (nonatomic, copy) NSString *imgsrc;

@end

@implementation HeadLines
+ (instancetype)HeadLinesWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

//进行数据请求和字典转模型
+ (void)getHeadlLinesModelWithSuccess:(void(^)(NSArray *))success fail:(void(^)(NSError *))fail {
    ZJNetworkTool *netTool = [ZJNetworkTool shareInstance];
    [netTool GET:@"headline/0-4.html" parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *responseObject) {
        //获得数据
        NSString *rootKey = responseObject.keyEnumerator.nextObject;
        //获得目标数组
        NSArray *headLines = responseObject[rootKey];
        //创建模型数组
        NSMutableArray *headLineArray = [[NSMutableArray alloc] initWithCapacity:headLines.count];
        [headLines enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //字典转模型
            [headLineArray addObject:[self HeadLinesWithDict:obj]];
        }];
        //headlineArray为不安全数组
        success(headLineArray.copy);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

//没有的字段
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}
@end
