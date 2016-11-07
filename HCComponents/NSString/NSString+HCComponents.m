//
//  NSString+HCComponents.m
//  HCComponents
//
//  Created by Neil Burchfield on 11/6/16.
//  Copyright © 2016 Neil Burchfield. All rights reserved.
//

#import "NSString+HCComponents.h"

/** Email Verification Helper */
BOOL HCIsValidEmail(NSString *email) {
    return email.length && [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"] evaluateWithObject:email];
}

/** Case-insensitive comparison between two strings */
BOOL HCStringsEqual(NSString *str1, NSString *str2) {
    if (!str1 && !str2) {
        return YES;
    }
    if ((!str1 && str2) || (str1 && !str2)) {
        return NO;
    }
    return [str1 caseInsensitiveCompare:str2] == NSOrderedSame;
}

@implementation NSString (HCComponents)

@end
