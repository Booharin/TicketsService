//
//  DataManager.h
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "Country.h"
#import "City.h"
#import "Airport.h"
#import "DataSourceTypeEnum.h"

#define kDataManagerLoadDataDidComplete  @"DataManagerLoadDataDidComplete"


@interface DataManager : NSObject
+ (instancetype)sharedInstance;

- (void)loadData;

@property(nonatomic, strong, readonly) NSArray *countries;

- (City *)cityForCityCode:(NSString *)iata;

@property(nonatomic, strong, readonly) NSArray *cities;
@property(nonatomic, strong, readonly) NSArray *airports;
@end
