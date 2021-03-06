//
//  ViewController.m
//  TMChannelView
//
//  Created by Luther on 2020/3/19.
//  Copyright © 2020 mrstock. All rights reserved.
//

#import "ViewController.h"
#import "TMChannelView.h"

@interface ViewController ()
{
    __block NSMutableArray *_myTags;
    __block NSMutableArray *_recommandTags;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _myTags = @[@"关注",@"推荐",@"热点",@"北京",@"视频",@"社会",@"图片",@"娱乐",@"问答",@"科技",@"汽车",@"财经",@"军事",@"体育",@"段子",@"国际",@"趣图",@"健康",@"特卖",@"房产",@"美食"].mutableCopy;
    _recommandTags = @[@"小说",@"时尚",@"历史",@"育儿",@"直播",@"搞笑",@"数码",@"养生",@"电影",@"手机",@"旅游",@"宠物",@"情感",@"家居",@"教育",@"三农",@"小说",@"时尚",@"历史",@"育儿",@"直播",@"搞笑",@"数码",@"养生",@"电影",@"手机",@"旅游",@"宠物",@"情感",@"家居",@"教育",@"三农"].mutableCopy;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 80, 80);
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonClick {
    TMChannelView *view = [[TMChannelView alloc] initWithFrame:self.view.bounds myTags:_myTags recommendTags:_recommandTags];
    view.topSpace = 40;
    view.contentViewCornerRadius = 10;
    view.cornerEdge = UIRectCornerTopLeft | UIRectCornerTopRight;
    [[UIApplication sharedApplication].keyWindow addSubview:view];
    [view popIn];
}


@end
