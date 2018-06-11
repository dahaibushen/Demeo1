//
//  User.h
//  Demo01
//
//  Created by 胡义勇 on 2018/5/15.
//  Copyright © 2018年 胡义勇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MJExtension/MJExtension.h>

@interface User : MJProperty

@property(nonatomic,strong)NSString * country;
@property(nonatomic,strong)NSString * dialCode;
@property(nonatomic,strong)NSString * isInEurope;


@end
