//
//  DetailViewController.h
//  XFZS
//
//  Created by fmc on 2019/11/23.
//  Copyright © 2019 cfy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
//游戏标题
@property (nonatomic, strong) NSString *itemTitle;
//游戏下载地址
@property (nonatomic, strong) NSString *itemUrl;
@end

NS_ASSUME_NONNULL_END
