//
//  HiRefreshFooter.m
//  HiMovie
//
//  Created by stone on 2021/3/2.
//  Copyright © 2021 Stone. All rights reserved.
//

#import "HiRefreshFooter.h"
#import "HiOCAssetsHelper.h"

//#import "Hi_Swift_Union-Swift.h"
//#import "Hi_Kit_Module-Swift.h"
//#import <Hi_Helper_Module/HiOCAssetsHelper.h>

@interface HiRefreshFooter()

@property (nonatomic, strong) NSMutableDictionary *titles;

@end

@implementation HiRefreshFooter

- (void)prepare
{
    [super prepare];
    self.stateLabel.textColor = [UIColor colorWithRed:59/255.0f green:113/255.0 blue:232/255.0 alpha:1.0];
    NSMutableArray *titlesArray = [NSMutableArray arrayWithObjects:@"上拉加载更多", @"释放立即加载",@"正在加载，请稍候...", @"没有更多数据了", nil];
    
    self.titles[@(MJRefreshStateIdle)] = titlesArray[0];
    self.titles[@(MJRefreshStatePulling)] = titlesArray[1];
    self.titles[@(MJRefreshStateWillRefresh)] = titlesArray[1];
    self.titles[@(MJRefreshStateRefreshing)] = titlesArray[2];
    self.titles[@(MJRefreshStateNoMoreData)] = titlesArray[3];
    
    // 设置普通状态的动画图片
    NSMutableArray *downImages = [NSMutableArray array];
    [downImages addObject:[HiOCAssetsHelper bundledImage:@"hi_mjrefresh_gif_down" withModule:@"Hi-Kit-Module"]];
    [self setImages:downImages forState:MJRefreshStateIdle];
    
    NSMutableArray *upImages = [NSMutableArray array];
    [upImages addObject:[HiOCAssetsHelper bundledImage:@"hi_mjrefresh_gif_up" withModule:@"Hi-Kit-Module"]];
    [self setImages:upImages forState:MJRefreshStatePulling];
    [self setImages:upImages forState:MJRefreshStateWillRefresh];
    // 设置正在刷新状态的动画图片
    NSMutableArray *refreshImages = [NSMutableArray array];
    for (NSUInteger i = 1; i<=25; i++) {
        UIImage *image = [HiOCAssetsHelper bundledImage:[NSString stringWithFormat:@"hi_mjrefresh_gif_0%zd", i] withModule:@"Hi-Kit-Module"];
        [refreshImages addObject:image];
    }
    [self setImages:refreshImages duration:0.6 forState:MJRefreshStateRefreshing];
    
    NSMutableArray *finishImages = [NSMutableArray array];
    [finishImages addObject:[HiOCAssetsHelper bundledImage:@"hi_mjrefresh_gif_finish" withModule:@"Hi-Kit-Module"]];
    [self setImages:finishImages forState:MJRefreshStateNoMoreData];
}

- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState
    // 根据状态做事情
    self.stateLabel.text = self.titles[@(state)];
}

- (NSMutableDictionary *)titles {
    if (!_titles) {
        _titles = [[NSMutableDictionary alloc] init];
    }
    return _titles;
}

@end


