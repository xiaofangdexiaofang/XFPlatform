//
//  DownloadDelegateHandler.h
//  XFZS
//
//  Created by fmc on 2019/11/23.
//  Copyright © 2019 cfy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DownloadItem;
NS_ASSUME_NONNULL_BEGIN

@interface DownloadDelegateHandler : NSObject<NSURLSessionDataDelegate>
-(instancetype)initWithItem:(DownloadItem *)item;
@end

NS_ASSUME_NONNULL_END
