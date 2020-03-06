//
//  DetailViewController.m
//  XFZS
//
//  Created by fmc on 2019/11/23.
//  Copyright © 2019 cfy. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *backBtn = [UIButton new];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(20, 20, 40, 40);
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    UILabel *downTitle = [UILabel new];
    downTitle.text = self.itemTitle;
    downTitle.textAlignment = NSTextAlignmentCenter;
    downTitle.frame = CGRectMake(0, 0, 100, 40);
    downTitle.textColor = [UIColor whiteColor];
    downTitle.center = self.view.center;
    [self.view addSubview:downTitle];
    downTitle.backgroundColor = [UIColor blackColor];
    
    UIButton *downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [downBtn setTitle:@"下载" forState:UIControlStateNormal];
    [downBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:downBtn];
    downBtn.frame = CGRectMake(self.view.frame.size.width/2-50, CGRectGetMaxY(downTitle.frame)+20, 100, 40);
    downBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.3];
    [downBtn addTarget:self action:@selector(clickDownBtn) forControlEvents:UIControlEventTouchUpInside];
    downBtn.layer.cornerRadius = 5;
    downBtn.layer.masksToBounds = YES;
    
    UIButton *installBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [installBtn setTitle:@"安装" forState:UIControlStateNormal];
    [installBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:installBtn];
    installBtn.frame = CGRectMake(self.view.frame.size.width/2-50, CGRectGetMaxY(downBtn.frame)+20, 100, 40);
    installBtn.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.3];
    [installBtn addTarget:self action:@selector(clickInstallBtn) forControlEvents:UIControlEventTouchUpInside];
    installBtn.layer.cornerRadius = 5;
    installBtn.layer.masksToBounds = YES;
}

- (void)clickBack{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)clickInstallBtn{
    NSString * plistStr = [NSString stringWithFormat:@"%@",self.itemUrl];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:plistStr] options:nil completionHandler:nil];
}

- (void)clickDownBtn{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
