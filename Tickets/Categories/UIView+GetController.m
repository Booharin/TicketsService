//
//  UIView+GetController.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "UIView+GetController.h"

@implementation UIView (GetController)

- (UIViewController *)getViewController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isMemberOfClass:[UIViewController class]]) {
            return (UIViewController *) nextResponder;
        }
    }
    return nil;
}

@end
