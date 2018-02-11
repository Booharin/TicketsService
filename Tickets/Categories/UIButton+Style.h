//
//  UIButton+Style.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Style)


- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title background:(UIColor *)bgcolor tint:(UIColor *)tintClr;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title;
@end
