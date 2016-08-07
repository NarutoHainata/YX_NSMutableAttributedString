//
//  ViewController.m
//  YX_NSMutableAttributedString
//
//  Created by yang on 16/8/7.
//  Copyright © 2016年 poplary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //设置label位置
    CGRect rect01 = CGRectMake(0, 50, self.view.frame.size.width, 50);
    //创建label
    UILabel *labelToShow01 = [[UILabel alloc]initWithFrame:rect01];
    //设置label背景颜色 此处设置为透明
    labelToShow01.backgroundColor = [UIColor clearColor];
    //字符串
    NSString *str = @"Happy New Year!";
    //新建富文本用来设置图片
    NSTextAttachment *labelImage = [[NSTextAttachment alloc]init];
    //设置图片
    labelImage.image = [UIImage imageNamed:@"icon_aboutmy.png"];
    //设置位置和大小
    labelImage.bounds = CGRectMake(0, 0, 30, 30);
    //新建富文本
    NSMutableAttributedString *attributeStr01 = [[NSMutableAttributedString alloc]initWithString:str];
    //新建一个富文本并且把图片加上
    NSAttributedString *attributeImage01 = [NSAttributedString attributedStringWithAttachment:labelImage];
    //设置富文本的字体大小和样式
    
    [attributeStr01 addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Zapfino" size:20] range:NSMakeRange(0, str.length)];
    //设置颜色可根据位置
    [attributeStr01 addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(5, 4)];
    //设置下划线
    [attributeStr01 addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleDouble] range:NSMakeRange(10, 4)];
    //讲文字和图片连接起来
    [attributeStr01 appendAttributedString:attributeImage01];
    //赋给label显示出来
    labelToShow01.attributedText = attributeStr01;
    //将label加进视图
    [self.view addSubview:labelToShow01];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
