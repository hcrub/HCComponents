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
    self.font = [UIFont fontWithName:fontName size:self.font.pointSize];
    
    if (!self.attributedPlaceholder) return;
    
    NSMutableAttributedString *mAttributedPlaceholder = self.attributedPlaceholder.mutableCopy;
    CGFloat placeholderFontSize = self.font.pointSize;
    
    NSRange *range;
    UIFont *placeholderFont = [self.attributedPlaceholder attribute:NSFontAttributeName atIndex:0 effectiveRange:range];
    if (placeholderFont) {
        placeholderFontSize = placeholderFont.pointSize;
    }
    
    [mAttributedPlaceholder setAttributes:@{NSFontAttributeName:[UIFont fontWithName:fontName size:placeholderFontSize]} range:*range];
    
    self.attributedPlaceholder = [mAttributedPlaceholder copy];
}

- (void)hc_setAppearanceFont:(UIFont *)font UI_APPEARANCE_SELECTOR {
    self.font = font;
}

@end
