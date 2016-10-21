//
//  UIFont+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "UIFont+HCComponents.h"

@import CoreText;

@implementation UIFont (HCComponents)

#pragma mark -
#pragma mark - Methods (Public)

+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName {
    return [self hc_dynamicallyLoadFontNamed:fontName inBundle:[NSBundle mainBundle]];
}

+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName inBundle:(NSBundle *)bundle {
    return [self hc_dynamicallyLoadFontNamed:fontName inBundle:bundle ofType:@"ttf"];
}

+ (BOOL)hc_dynamicallyLoadFontNamed:(NSString *)fontName inBundle:(NSBundle *)bundle ofType:(NSString *)type {
    NSURL *const pathURL = [bundle URLForResource:fontName withExtension:type];
    
    NSData *fontData = [NSData dataWithContentsOfURL:pathURL];
    if (fontData) {
        CFErrorRef error;
        CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
        CGFontRef font = CGFontCreateWithDataProvider(provider);
        if (!CTFontManagerRegisterGraphicsFont(font, &error)) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            NSLog(@"Failed to load font: %@", errorDescription);
            CFRelease(errorDescription);
        }
        CFRelease(font);
        CFRelease(provider);
        return YES;
    }
    
    return NO;
}

@end
