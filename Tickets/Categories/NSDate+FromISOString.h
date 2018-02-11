//
//  NSDate+FromISOString.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FromISOString)

- (instancetype)initWithISOString:(NSString *)dateString;

@end
