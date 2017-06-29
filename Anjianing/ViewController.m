//
//  ViewController.m
//  Anjianing
//
//  Created by 李玉生 on 2017/6/27.
//  Copyright © 2017年 sge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

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
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://anjiani.weyangyang.com/xmshop/index?uid=2"]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
