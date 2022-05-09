//
//  HiOCAssetsHelper.h
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HiOCAssetsHelper : NSObject

+ (UIImage *)bundledImage:(NSString *)name withModule:(NSString *)module;

@end

NS_ASSUME_NONNULL_END
