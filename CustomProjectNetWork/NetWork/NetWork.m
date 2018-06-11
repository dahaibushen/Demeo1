//
//  NetWork.m
//  NetWork
//
//  Created by 胡义勇 on 2018/6/11.
//  Copyright © 2018年 胡义勇. All rights reserved.
//

#import "NetWork.h"
#import <AFNetworking.h>

@implementation NetWork

-(instancetype)init{
    if (self = [super init]) {
        AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}



@end
