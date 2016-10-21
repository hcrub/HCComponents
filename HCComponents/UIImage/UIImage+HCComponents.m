//
//  UIImage+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "UIImage+HCComponents.h"

@implementation UIImage (HCComponents)

#pragma mark -
#pragma mark - Methods (Public)

+ (UIImage *)hc_imageWithColor:(UIColor *)color {
    return [self hc_imageWithColor:color size:CGSizeMake(1.f, 1.f)];
}

+ (UIImage *)hc_imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0.f, 0.f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)hc_imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
