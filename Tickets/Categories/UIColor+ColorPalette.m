//
//  UIColor+ColorPalette.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "UIColor+ColorPalette.h"

@implementation UIColor (ColorPalette)

+ (UIColor *)navigationBarFW {
    return [UIColor colorWithRed:167.0 / 255.0 green:143.0 / 255.0 blue:255.0 alpha:0.15];
}

+ (UIColor *)buttonBackgorundFW {
    return [UIColor colorWithRed:128.0 / 255.0 green:110.0 / 255.0 blue:195.0 / 255.0 alpha:0.75];
}

+ (UIColor *)buttonTintFW {
    return [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
}

+ (UIColor *)cellShadowColorFW {
    return [UIColor colorWithRed:167.0 / 255.0 green:143.0 / 255.0 blue:255.0 alpha:0.85];
}


@end
