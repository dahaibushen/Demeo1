//
//  ViewController.m
//  Demo01
//
//  Created by 胡义勇 on 2018/4/25.
//  Copyright © 2018年 胡义勇. All rights reserved.
//

#import "ViewController.h"
#import "GlobalHeader.h"
#import "objc/runtime.h"
#import "User.h"
#import <AFNetworking.h>
#import "AFImageDownloader.h"
#import "UIImageView+AFNetworking.h"
#import "UIImageView+WebCache.h"
#import <CommonProject1/CommonProjectView.h>


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //http://img.zcool.cn/community/0142135541fe180000019ae9b8cf86.jpg
    //http://img0.imgtn.bdimg.com/it/u=3047678049,3860519935&fm=27&gp=0.jpg
    
    NSDecimalNumber *decinal = [[NSDecimalNumber alloc] initWithString:@"12.434"];
    __weak typeof(self)weakself = self;
    
    CommonProjectView *projectview = [[CommonProjectView alloc] initWithFrame:CGRectMake(100, 450, 100, 100)];
    [self.view addSubview:projectview];
//    CustomView *custom = [[CustomView alloc] init];
//    custom.frame = CGRectMake(100, 400, 100, 100);
//    [self.view addSubview:custom];
    
//    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
//    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    [sessionManager GET:@"http://img.zcool.cn/community/0142135541fe180000019ae9b8cf86.jpg" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//        
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        
//        self.showImageView.image = [UIImage imageWithData:responseObject];
//        NSLog(@"look here sssss---:%@",self.showImageView.image);
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"look here error ----:%@",error.localizedDescription);
//    }];
//    AFHTTPSessionManager *session = [AFHTTPRequestSerializer sharedImageDownloader];
    AFImageDownloader *loader = [UIImageView sharedImageDownloader];
//    [self.showImageView setImageWithURL:[NSURL URLWithString:@"http://img.zcool.cn/community/0142135541fe180000019ae9b8cf86.jpg"]];
    
    //http://img.zcool.cn/community/0142135541fe180000019ae9b8cf86.jpg
    
    //http://img.zcool.cn/community/01635d571ed29832f875a3994c7836.png@900w_1l_2o_100sh.jpg
    
    
//    SDImageCache *imageCache = [SDImageCache sharedImageCache];
//    imageCache.config.maxCacheAge = 10;
//    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:@"http://img.zcool.cn/community/01635d571ed29832f875a3994c7836.png@900w_1l_2o_100sh.jpg"] placeholderImage:nil];
    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:@"http://img.zcool.cn/community/01635d571ed29832f875a3994c7836.png@900w_1l_2o_100sh.jpg"] placeholderImage:nil options:(SDWebImageCacheMemoryOnly)];//SDWebImageQueryDiskSync
    
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"abc.txt" ofType:nil];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
//    NSError *error ;
//    id obj = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableContainers) error:&error];

}

- (IBAction)buttClick:(UIButton *)sender {
    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:@"http://img.zcool.cn/community/01635d571ed29832f875a3994c7836.png@900w_1l_2o_100sh.jpg"] placeholderImage:nil options:(SDWebImageHighPriority)];
}

@end
