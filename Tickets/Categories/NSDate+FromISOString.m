//
//  NSDate+FromISOString.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "NSDate+FromISOString.h"

@implementation NSDate (FromISOString)

- (instancetype)initWithISOString:(NSString *)dateString {
    if (!dateString) return nil;
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    NSString *replacedString = [[dateString
                                 stringByReplacingOccurrencesOfString:@"T" withString:@" "]
                                stringByReplacingOccurrencesOfString:@"Z" withString:@" "];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    self = [dateFormatter dateFromString:replacedString];
    return self;
}

@end
