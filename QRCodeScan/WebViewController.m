//
//  WebViewController.m
//  QRCodeScan
//
//  Created by 黄海燕 on 16/5/7.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property(nonatomic,strong) UIWebView *webView;
@end

@implementation WebViewController

//懒加载
-(UIWebView *)webView
{
    if (_webView == nil) {
        _webView = [[UIWebView alloc]init];
        _webView.frame = self.view.bounds;
        [self.view addSubview:_webView];
    }
    return _webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:self.urlString];
    NSURLRequest *urlReq = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlReq];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
