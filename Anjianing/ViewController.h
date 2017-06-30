//
//  ViewController.h
//  Anjianing
//
//  Created by 李玉生 on 2017/6/27.
//  Copyright © 2017年 sge. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NJKWebViewProgressView.h"
#import "NJKWebViewProgress.h"

@interface ViewController : UIViewController//<UIWebViewDelegate,NJKWebViewProgressDelegate>

@property (nonatomic,strong) NJKWebViewProgressView *progressView;
@property (nonatomic,strong) NJKWebViewProgress *progressProxy;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

