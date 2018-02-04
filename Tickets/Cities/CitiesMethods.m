//
//  CitiesMethods.m
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "CitiesMethods.h"

@implementation CitiesMethods

+ (void)setCustomNavigationBar:(UINavigationController*)navController
                  withSegments:(BOOL)yesOrNot; {
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Cities", @"Airports", nil]];
    CGFloat width = 140;
    segmentedControl.frame = CGRectMake((navController.view.bounds.size.width / 2) - (width / 2), 15, width, 20);
    [navController.navigationBar addSubview:segmentedControl];
    navController.navigationBar.tintColor = UIColor.blackColor;
    
    if (yesOrNot == NO) {
        
        for (UIView *view in [navController.navigationBar subviews])
        {
            [view removeFromSuperview];
        }
    }
}

@end
