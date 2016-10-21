//
//  UIFont+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 UIFont+HCComponents
 
 @description Collection of UIFont Extensions.
 */

@interface UIFont (HCComponents)

/**
 Loads the font dynamically for usage.

 @param fontName    Font name.
 @discussion        Defaults to main bundle.
 @return Whether the font was successfully loaded or not.
 */
+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName;

/**
 Loads the font dynamically for usage.
 
 @param fontName    Font name.
 @param bundle      Source bundle.
 @discussion        Defaults to ttf.
 @return Whether the font was successfully loaded or not.
 */
+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName inBundle:(NSBundle *)bundle;

/**
 Loads the font dynamically for usage.
 
 @param fontName    Font name.
 @param bundle      Source bundle.
 @param type        Path extension.
 @return Whether the font was successfully loaded or not.
 */
+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName inBundle:(NSBundle *)bundle ofType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
