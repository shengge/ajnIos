//
//  ViewController+LeftNaviItem.m
//  Anjianing
//
//  Created by ruipeng on 2017/6/30.
//  Copyright © 2017年 sge. All rights reserved.
//

#import "ViewController+LeftNaviItem.h"

@implementation ViewController (LeftNaviItem)
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
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
        backItem = item;
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
@end
