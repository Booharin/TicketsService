//
//  PlacesTableViewController.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"


@protocol PlaceViewControllerDelegate <NSObject>
- (void)selectPlace:(id)place withType:(bool)isOrigin andDataType:(DataSourceType)dataType;
@end

@interface PlacesTableViewController : UITableViewController
@property(nonatomic, strong) id <PlaceViewControllerDelegate> delegate;

- (instancetype)initWithStyle:(UITableViewStyle)style toReturnOrigin:(bool)isOrigin;
@end
