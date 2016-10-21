//
//  NSBundle+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 NSBundle+HCComponents
 
 @description Collection of NSBundle Extensions.
 */

@interface NSBundle (HCComponents)

/**
 References the bundle specified.
 
 @param name    Name of the bundle.
 @discussion    Traverses the main bundle to locate.
 @return        Bundle associated with the name.
 */
+ (nullable NSBundle *)hc_bundleWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
