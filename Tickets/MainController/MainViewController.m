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
#import "MainViewMethods.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[DataManager sharedInstance] loadData];
    self.view.backgroundColor = UIColor.redColor;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDataComplete)
                                                 name:kDataManagerLoadDataDidComplete object:nil];
    
    [MainViewMethods setButtomsToController:self];
}

- (void)buttonClicked:(UIButton *)button {
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













