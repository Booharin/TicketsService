//
//  CitiesViewController.m
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "CitiesViewController.h"
#import "CitiesViewCell.h"
#import "DataManager.h"
#import "City.h"

@interface CitiesViewController ()

@end

@implementation CitiesViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = DataManager.sharedInstance;
    _cities = [NSMutableArray arrayWithArray:_data.cities];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.cities.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CitiesViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    
    if (!cell) {
        cell = [[CitiesViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"CellIdentifier"];
    }
    
    City *city = _cities[indexPath.row];

    cell.cityNameLabel.text =  [NSString stringWithFormat:@"%@", city.name];

    //cell.rightLabel.text = @"Right";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_cities removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end
