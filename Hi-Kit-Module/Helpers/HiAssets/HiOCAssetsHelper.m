//
//  HiOCAssetsHelper.m
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/7.
//

#import "HiOCAssetsHelper.h"

@implementation HiOCAssetsHelper

+ (UIImage *)bundledImage:(NSString *)name withModule:(NSString *)module {
    
    NSMutableString *pathMutableString = [[NSMutableString alloc] initWithString:[NSString stringWithFormat:@"%@.framework/%@.bundle",[module stringByReplacingOccurrencesOfString:@"-" withString:@"_"],module]];
    
    NSString *pathString = [[[NSBundle mainBundle] privateFrameworksPath] stringByAppendingPathComponent:pathMutableString];
    
    NSBundle *mainBundle = [NSBundle bundleWithPath:pathString];
    
    return  [UIImage imageNamed:name inBundle:mainBundle compatibleWithTraitCollection:nil];
}

@end
