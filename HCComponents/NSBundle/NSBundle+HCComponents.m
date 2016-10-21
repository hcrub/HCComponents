//
//  NSBundle+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "NSBundle+HCComponents.h"

@implementation NSBundle (HCComponents)

#pragma mark -
#pragma mark - Methods (Public)

+ (NSBundle *)hc_bundleWithName:(NSString *)name {
    NSURL *const bundleURL = [[NSBundle mainBundle] URLForResource:name withExtension:@"bundle"];
    return [NSBundle bundleWithURL:bundleURL];
}

@end
