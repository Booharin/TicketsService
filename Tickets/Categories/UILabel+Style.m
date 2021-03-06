//
//  UILabel+Style.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "UILabel+Style.h"

@implementation UILabel (Style)

+ (instancetype)newWithFrame:(CGRect)frame usingTitle:(NSString *__nullable)title alignment:(NSTextAlignment)alignment {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = UIColor.blackColor;
    if (alignment) {
        label.textAlignment = alignment;
    } else {
        label.textAlignment = NSTextAlignmentCenter;
    }
    label.text = title;
    return label;
}

+ (instancetype)newWithFrame:(CGRect)frame usingTitle:(NSString *__nullable)title {
    return [UILabel newWithFrame:frame usingTitle:title alignment:(NSTextAlignmentCenter)];
}

@end
