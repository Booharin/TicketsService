//
//  ViewController.m
//  Tickets
//
//  Created by Александр on 28.01.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.greenColor;
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
    [self.view addSubview:redView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
