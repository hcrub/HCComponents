//
//  UIButton+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 11/6/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "UIButton+HCComponents.h"

@implementation UIButton (HCComponents)

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

- (void)hc_setAppearanceFontName:(NSString *)fontName UI_APPEARANCE_SELECTOR {
    self.font = [UIFont fontWithName:fontName size:self.font.pointSize];
}

- (void)hc_setAppearanceFont:(UIFont *)font UI_APPEARANCE_SELECTOR {
    self.font = font;
}

#pragma GCC diagnostic pop

@end
