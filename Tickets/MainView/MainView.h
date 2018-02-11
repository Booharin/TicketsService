//
//  MainView.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILabel+Style.h"
#import "UIButton+Style.h"
#import "UIView+GetController.h"

@interface MainView : UIView


- (id)initWithFrame:(CGRect)frame;

- (void)activateButtons;

- (void)setTitle:(NSString *)title forOriginButton:(BOOL)isOrigin;
@end
