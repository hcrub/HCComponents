//
//  NSString+HCComponents.h
//  HCComponents
//
//  Created by Neil Burchfield on 11/6/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** Email Verification Helper */
FOUNDATION_EXPORT BOOL HCIsValidEmail(NSString *email);

/** Case-insensitive comparison between two strings */
FOUNDATION_EXPORT BOOL HCStringsEqual(NSString *str1, NSString *str2);

/**
 NSString+HCComponents
 
 @description Collection of NSString Extensions.
 */

@interface NSString (HCComponents)

@end

NS_ASSUME_NONNULL_END
