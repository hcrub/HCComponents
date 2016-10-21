//
//  UIImage+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 UIImage+HCComponents
 
 @description Collection of UIImage Extensions.
 */

@interface UIImage (HCComponents)

/**
 Generates image with the color.

 @param color   Color to generate.
 @discussion    Defaults to 1x1 size.
 @return        Image drawn with the color.
 */
+ (UIImage *)hc_imageWithColor:(UIColor *)color;

/**
 Generates an image with the color.
 
 @param color   Color to generate.
 @param size    Size to create image with.
 @return        Image drawn with the color.
 */
+ (UIImage *)hc_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 Generates an image based on the source with the dimensions.

 @param image   Image to scale.
 @param newSize Size to scale to.
 @return        Image scaled to the size.
 */
+ (UIImage *)hc_imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize;

@end

NS_ASSUME_NONNULL_END
