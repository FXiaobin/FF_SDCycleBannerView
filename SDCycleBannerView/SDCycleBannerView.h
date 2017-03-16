//
//  SDCycleBannerView.h
//  dfds
//
//  Created by liwei on 17/3/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <SDCycleScrollView/SDCycleScrollView.h>

typedef void (^imageViewTap) (NSInteger index);

@interface SDCycleBannerView : SDCycleScrollView

-(instancetype)initWithFrame:(CGRect)frame placeholderImage:(NSString *)placeholderImage imageViewTap:(imageViewTap)block;

@end
