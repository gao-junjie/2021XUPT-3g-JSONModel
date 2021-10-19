//
//  ViewController.m
//  JSONModel的使用
//
//  Created by mac on 2021/10/12.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *json = @"http://news-at.zhihu.com/api/4/news/latest";
        json = [json stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        NSURL *testUrl = [NSURL URLWithString:json];
        NSURLRequest *testRequest = [NSURLRequest requestWithURL:testUrl];
        NSURLSession *testSession = [NSURLSession sharedSession];
        NSURLSessionDataTask *testDataTask = [testSession dataTaskWithRequest:testRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            TestModel *country = [[TestModel alloc] initWithData:data error:nil];
            NSLog(@"%@",country.stories[0]);
            self->_stories = country.stories[0];
            NSLog(@"%@",self.stories.title);
            
        }];
        //任务启动
        [testDataTask resume];
}


@end
