//
//  UIColor+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 10/20/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "UIColor+HCComponents.h"

@implementation UIColor (HCComponents)

#pragma mark -
#pragma mark - Methods (Public)

- (NSString *)hc_hexString {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    return [NSString stringWithFormat:@"%02lX%02lX%02lX",
            lroundf(r * 255),
            lroundf(g * 255),
            lroundf(b * 255)];
}

+ (UIColor *)hc_colorWithHexString:(NSString *)hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self hc_colorComponentFrom: colorString start: 0 length: 1];
            green = [self hc_colorComponentFrom: colorString start: 1 length: 1];
            blue  = [self hc_colorComponentFrom: colorString start: 2 length: 1];
            break;
        case 4: // #ARGB
            alpha = [self hc_colorComponentFrom: colorString start: 0 length: 1];
            red   = [self hc_colorComponentFrom: colorString start: 1 length: 1];
            green = [self hc_colorComponentFrom: colorString start: 2 length: 1];
            blue  = [self hc_colorComponentFrom: colorString start: 3 length: 1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self hc_colorComponentFrom: colorString start: 0 length: 2];
            green = [self hc_colorComponentFrom: colorString start: 2 length: 2];
            blue  = [self hc_colorComponentFrom: colorString start: 4 length: 2];
            break;
        case 8: // #AARRGGBB
            alpha = [self hc_colorComponentFrom: colorString start: 0 length: 2];
            red   = [self hc_colorComponentFrom: colorString start: 2 length: 2];
            green = [self hc_colorComponentFrom: colorString start: 4 length: 2];
            blue  = [self hc_colorComponentFrom: colorString start: 6 length: 2];
            break;
        default:
            [NSException raise:@"Invalid color value" format: @"Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB", hexString];
            break;
    }
    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

#pragma mark -
#pragma mark - Methods (Private)

+ (CGFloat)hc_colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

@end
