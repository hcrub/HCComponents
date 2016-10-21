//
//  UIColor+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 UIColor+HCComponents
 
 @description Collection of UIColor Extensions.
 */

@interface UIColor (HCComponents)

/**
 Generates a hexadecimal equivalent color string.

 @return A hexadecimal string object representation.
 */
- (NSString *)hc_hexString;

/**
 Generates a UIColor with the string.

 @param hexString Hexadecimal string formatted color.
 @return Color based on the hex string provided.
 */
+ (UIColor *)hc_colorWithHexString:(NSString *)hexString;

@end

NS_ASSUME_NONNULL_END
