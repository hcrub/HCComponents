//
//  UITextField+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 11/6/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "UITextField+HCComponents.h"

@implementation UITextField (HCComponents)

- (void)hc_setAppearanceFontName:(NSString *)fontName UI_APPEARANCE_SELECTOR {
    [self hc_setAppearanceFont:[UIFont fontWithName:fontName size:self.font.pointSize]];
}

- (void)hc_setAppearanceFont:(UIFont *)font UI_APPEARANCE_SELECTOR {
    self.font = font;
    
    CGFloat placeholderFontSize = roundf(font.pointSize * 0.7f);
    
    if (self.attributedPlaceholder) {
        NSMutableAttributedString *mAttributedPlaceholder = self.attributedPlaceholder.mutableCopy;
        
        [mAttributedPlaceholder beginEditing];
        
        NSRange range;
        UIFont *existingPlaceholderFont = [self.attributedPlaceholder attribute:NSFontAttributeName atIndex:0 effectiveRange:&range];
        if (existingPlaceholderFont) {
            placeholderFontSize = existingPlaceholderFont.pointSize;
        }
        
        [mAttributedPlaceholder addAttribute:NSFontAttributeName
                                       value:[UIFont fontWithName:font.fontName size:placeholderFontSize]
                                       range:range];
        
        [mAttributedPlaceholder endEditing];
        
        self.attributedPlaceholder = [mAttributedPlaceholder copy];
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    
    if ([self respondsToSelector:@selector(setFloatingLabelFont:)]) {
        [self performSelector:@selector(setFloatingLabelFont:) withObject:[UIFont fontWithName:font.fontName size:placeholderFontSize]];
    }
    
#pragma clang diagnostic pop
    
}

@end
