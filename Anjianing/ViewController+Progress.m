//
//  ViewController+Progress.m
//  Anjianing
//
//  Created by ruipeng on 2017/6/30.
//  Copyright © 2017年 sge. All rights reserved.
//

#import "ViewController+Progress.h"
#import "NJKWebViewProgressView.h"
#import "NJKWebViewProgress.h"

@implementation ViewController (Progress)


- (void)setupProgressView
{
    self.progressProxy = [[NJKWebViewProgress alloc] init];
    self.webView.delegate = self.progressProxy;
    self.progressProxy.webViewProxyDelegate = (id<UIWebViewDelegate>)self;
    self.progressProxy.progressDelegate = (id<NJKWebViewProgressDelegate>)self;
    
    CGFloat progressBarHeight = 2.f;
    CGRect navigationBarBounds = self.navigationController.navigationBar.bounds;
    CGRect barFrame = CGRectMake(0, navigationBarBounds.size.height - progressBarHeight, navigationBarBounds.size.width, progressBarHeight);
    self.progressView = [[NJKWebViewProgressView alloc] initWithFrame:barFrame];
    self.progressView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    [self.progressView setProgress:0 animated:YES];
}
#pragma mark - NJKWebViewProgressDelegate
-(void)webViewProgress:(NJKWebViewProgress *)webViewProgress updateProgress:(float)progress
{
    [self.progressView setProgress:progress animated:YES];
}
@end
