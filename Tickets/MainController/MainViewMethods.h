//
//  MainViewMethods.h
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainViewMethods : NSObject

@property (nonatomic, strong) UIViewController *selfController;

+ (void) setButtomsToController:(UIViewController*)controller;

@end
