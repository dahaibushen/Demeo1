//
//  NetWork.m
//  NetWork
//
//  Created by 胡义勇 on 2018/6/11.
//  Copyright © 2018年 胡义勇. All rights reserved.
//

#import "NetWork.h"
#import <AFNetworking.h>

@interface NetWork ()
@property(nonatomic,strong)AFHTTPSessionManager *sessionManager;
@end

@implementation NetWork

-(instancetype)init{
    if (self = [super init]) {
        AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
        self.sessionManager = sessionManager;
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}
-(void)getRequsetDetailNewsWithString:(NSString*)imgUrl WithCompleteBlock:(completeBlock)completeBlock{
    [self.sessionManager GET:imgUrl parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completeBlock(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completeBlock(nil);
    }];
}




@end
