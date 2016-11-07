//
//  UITextField+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 11/6/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 UITextField+HCComponents
 
 @description Collection of UITextField Extensions.
 */

@interface UITextField (HCComponents)

/**
 UIAppearance support for font name.

 @discussion Uses default font size.
 @param fontName The name of the font to substitute.
 */
- (void)hc_setAppearanceFontName:(NSString *)fontName UI_APPEARANCE_SELECTOR;

/**
 UIAppearance support for font name and size.
 
 @param font The font to substitute.
 */
- (void)hc_setAppearanceFont:(UIFont *)font UI_APPEARANCE_SELECTOR;

@end

NS_ASSUME_NONNULL_END
