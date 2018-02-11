//
//  MainNavigationController.m
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MainNavigationController.h"
#import "MainViewController.h"
#import "UIColor+ColorPalette.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
    MainViewController *firstViewController = [[MainViewController alloc] init];
    [self setupNavigationOutlook];
    [self pushViewController:firstViewController animated:YES];
    
}

- (void)setupNavigationOutlook {
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
    self.navigationBar.barTintColor = UIColor.navigationBarFW;
    self.navigationBar.translucent = false;
    self.navigationBar.prefersLargeTitles = true;
}

@end
