//
//  ViewController.m
//  XFZS
//
//  Created by fmc on 2019/11/22.
//  Copyright © 2019 cfy. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *fristBtn;
@property (nonatomic,strong) UIButton *secondBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *fristBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [fristBtn setTitle:@"城市盾牌" forState:UIControlStateNormal];
    [fristBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:fristBtn];
    fristBtn.frame = CGRectMake(0, 0, 100, 40);
    fristBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.3];
    [fristBtn addTarget:self action:@selector(clickFristBtn) forControlEvents:UIControlEventTouchUpInside];
    fristBtn.layer.cornerRadius = 5;
    fristBtn.layer.masksToBounds = YES;
    fristBtn.center = self.view.center;
    self.fristBtn = fristBtn;
    
    UIButton *secondBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [secondBtn setTitle:@"刀剑情缘传" forState:UIControlStateNormal];
    [secondBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:secondBtn];
    secondBtn.frame = CGRectMake(self.view.frame.size.width/2-50, CGRectGetMaxY(fristBtn.frame)+30, 100, 40);
    secondBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.3];
    [secondBtn addTarget:self action:@selector(clickSecondBtn) forControlEvents:UIControlEventTouchUpInside];
    secondBtn.layer.cornerRadius = 5;
    secondBtn.layer.masksToBounds = YES;
    self.secondBtn = secondBtn;
}

- (void)clickFristBtn{
    NSString * plistStr = [NSString stringWithFormat:@"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/xiaofangdexiaofang/XFPlatform/master/cityShield.plist"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:plistStr] options:nil completionHandler:nil];
    NSLog(@"安装plistStr======%@",plistStr);
    
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.itemTitle = @"城市盾牌";
    detailVC.itemUrl = @"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/xiaofangdexiaofang/XFPlatform/master/cityShield.plist";
    [self presentViewController:detailVC animated:YES completion:nil];
    
}

- (void)clickSecondBtn{
    NSString * plistStr = [NSString stringWithFormat:@"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/xiaofangdexiaofang/XFPlatform/master/djqy.plist"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:plistStr] options:nil completionHandler:nil];
    NSLog(@"安装plistStr======%@",plistStr);
    
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    
    detailVC.itemTitle = @"刀剑情缘传";
    detailVC.itemUrl = @"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/xiaofangdexiaofang/XFPlatform/master/djqy.plist";
    [self presentViewController:detailVC animated:YES completion:nil];
}
@end
