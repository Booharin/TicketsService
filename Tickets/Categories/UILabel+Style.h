//
//  UILabel+Style.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UILabel (Style)

+ (instancetype _Nonnull)newWithFrame:(CGRect)frame usingTitle:(NSString *__nullable)title alignment:(NSTextAlignment)alignment;

+ (instancetype _Nonnull)newWithFrame:(CGRect)frame usingTitle:(NSString *__nullable)title;

@end
