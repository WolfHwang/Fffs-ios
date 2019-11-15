//
//  ViewController.m
//  Fffs_Ios
//
//  Created by Tenvine IMac on 2019/11/15.
//  Copyright © 2019 ZEROwolf. All rights reserved.
//

#import "ViewController.h"
 #import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    // 设置访问的URL
    NSURL *url = [NSURL URLWithString:@"http://fffs.wxjcy.cn/"];
    // 根据URL创建请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    // WKWebView加载请求
    [webView loadRequest:request];
    // 将WKWebView添加到视图
    [self.view addSubview:webView];
    
}


@end
