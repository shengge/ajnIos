//
//  ViewController.m
//  Anjianing
//
//  Created by 李玉生 on 2017/6/27.
//  Copyright © 2017年 sge. All rights reserved.
//

#import "ViewController.h"

#import "ViewController+LeftNaviItem.h"
#import "ViewController+Progress.h"

@interface ViewController ()<UIWebViewDelegate>
{
    
}


@end

@implementation ViewController
/**
 - webView:shouldStartLoadWithRequest:navigationType:
 Sent before a web view begins loading a frame.
 - webViewDidStartLoad:
 Sent after a web view starts loading a frame.
 - webViewDidFinishLoad:
 Sent after a web view finishes loading a frame.
 - webView:didFailLoadWithError:
 Sent if a web view failed to load a frame.
 
 http://anjiani.weyangyang.com/xmshop/index?uid=2
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://anjiani.weyangyang.com/xmshop/index?uid=2"]]];
    [self setupProgressView];
    self.title = @"新家妮商城";
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar addSubview:_progressView];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [_progressView removeFromSuperview];
}



#pragma mark - UIWebViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self setupLeftItems];
}
#pragma mark - 
- (void)goBack
{
    if (self.webView.canGoBack) {
        [self.webView goBack];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
