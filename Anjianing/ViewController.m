//
//  ViewController.m
//  Anjianing
//
//  Created by 李玉生 on 2017/6/27.
//  Copyright © 2017年 sge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

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
    self.title = @"新家妮商城";
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    self.webView.userInteractionEnabled = NO;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    self.webView.userInteractionEnabled = YES;
   // NSString *title = [self.webView stringByEvaluatingJavaScriptFromString:@"document.title"];
   // self.title = title;
    [self setupLeftItems];
    
}

- (void)setupLeftItems
{
    UIBarButtonItem *backItem = nil;
    UIBarButtonItem *closeItem = nil;
    
    //后退
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        [btn setFrame:CGRectMake(0.0f, 0.0f, 25.0f, 25.0f)];
        [btn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//        [btn setImage:[UIImage imageNamed:@"btn_back_grey_normal"] forState:UIControlStateNormal];
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
        backItem = item; //[[UIBarButtonItem alloc] initWithCustomView:btn];
    }
    //关闭
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(0.0f, 0.0f, 44.0f, 44.0f)];
        [btn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
        [btn setImage:[UIImage imageNamed:@"navi_item_close"] forState:UIControlStateNormal];
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
        closeItem = item;
    }
    
    if (self.webView.canGoBack) {
        self.navigationItem.leftBarButtonItems = @[backItem];//closeItem
    }else{
        self.navigationItem.leftBarButtonItems = nil;//@[backItem];
    }
}

- (void)goBack
{
    if (self.webView.canGoBack) {
        [self.webView goBack];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
