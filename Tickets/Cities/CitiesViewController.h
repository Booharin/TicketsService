//
//  CitiesViewController.h
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface CitiesViewController : UITableViewController

@property (nonatomic, strong) DataManager *data;
@property (nonatomic, strong) NSMutableArray *cities;

@end
