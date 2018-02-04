//
//  ViewController.m
//  Tickets
//
//  Created by Александр on 28.01.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MainViewController.h"
#import "CitiesViewController.h"
#import "DataManager.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[DataManager sharedInstance] loadData];
    self.view.backgroundColor = UIColor.redColor;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDataComplete)
                                                 name:kDataManagerLoadDataDidComplete object:nil];
    
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
    
    [self.view addSubview:buttonFrom];
    
    UIButton *buttonTo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGFloat originXbuttonTo = (UIScreen.mainScreen.bounds.size.width / 2) - (width / 2);
    CGFloat originYbuttonTo = (UIScreen.mainScreen.bounds.size.height / 2) - (height / 2) + height;
    buttonTo.frame = CGRectMake(originXbuttonTo, originYbuttonTo, width, height);
    [buttonTo setTitle:@"To" forState:UIControlStateNormal];
    buttonTo.backgroundColor = UIColor.blackColor;
    
    [buttonTo addTarget:self
                   action:@selector(buttonClicked:)
         forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonTo];
    
}

-(void)buttonClicked:(UIButton *)button {
    CitiesViewController *citiesvc = [CitiesViewController new];
    [self.navigationController pushViewController:citiesvc animated:YES];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kDataManagerLoadDataDidComplete
                                                  object:nil];
}
- (void)loadDataComplete
{
    self.view.backgroundColor = [UIColor greenColor];
}

@end













