//
//  UIButton+Style.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "UIButton+Style.h"
#import "UIColor+ColorPalette.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation UIButton (Style)

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title background:(UIColor *)bgcolor tint:(UIColor *)tintClr {
    self = [[UIButton alloc] initWithFrame:frame];
    
    if (title) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitle:title forState:UIControlStateDisabled];
    } else {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitle:@"Unnamed" forState:UIControlStateDisabled];
    }
    
    UIColor *mainColor = (bgcolor ? bgcolor : UIColor.clearColor);
    self.backgroundColor = mainColor;
    self.tintColor = (tintClr ? tintClr : [UIColor colorWithRed:0.0 green:122.0 / 255.0 blue:1.0 alpha:1.0]);
    self.layer.cornerRadius = 15.0;
    self.layer.shadowColor = [mainColor CGColor];
    self.layer.shadowOpacity = 1;
    self.layer.shadowRadius = 10;
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title {
    self = [[UIButton alloc] initWithFrame:frame
                                     title:title
                                background:UIColor.buttonBackgorundFW
                                      tint:UIColor.buttonTintFW];
    return self;
}

@end
