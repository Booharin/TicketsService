//
//  MainViewMethods.m
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MainViewMethods.h"
#import "CitiesViewController.h"

@implementation MainViewMethods

UIViewController *selfController;

+ (void) setButtomsToController:(UIViewController*)controller {
    
    selfController = controller;
    
    UIButton *buttonFrom = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGFloat width = 150;
    CGFloat height = 50;
    CGFloat originXbuttonFrom = (UIScreen.mainScreen.bounds.size.width / 2) - (width / 2);
    CGFloat originYbuttonFrom = (UIScreen.mainScreen.bounds.size.height / 2) - (height / 2) - height;
    buttonFrom.frame = CGRectMake(originXbuttonFrom, originYbuttonFrom, width, height);
    [buttonFrom setTitle:@"From" forState:UIControlStateNormal];
    buttonFrom.backgroundColor = UIColor.blackColor;
    
    [buttonFrom addTarget:self
                   action:@selector(buttonClicked:)
         forControlEvents:UIControlEventTouchUpInside];
    
    [controller.view addSubview:buttonFrom];
    
    UIButton *buttonTo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGFloat originXbuttonTo = (UIScreen.mainScreen.bounds.size.width / 2) - (width / 2);
    CGFloat originYbuttonTo = (UIScreen.mainScreen.bounds.size.height / 2) - (height / 2) + height;
    buttonTo.frame = CGRectMake(originXbuttonTo, originYbuttonTo, width, height);
    [buttonTo setTitle:@"To" forState:UIControlStateNormal];
    buttonTo.backgroundColor = UIColor.blackColor;
    
    [buttonTo addTarget:self
                 action:@selector(buttonClicked:)
       forControlEvents:UIControlEventTouchUpInside];
    
    [controller.view addSubview:buttonTo];
}

+ (void)buttonClicked:(UIButton *)button {
    CitiesViewController *citiesvc = [CitiesViewController new];
    [selfController.navigationController pushViewController:citiesvc animated:YES];
    NSLog(@"Go");
}

@end
