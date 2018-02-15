//
//  MapViewController.m
//  Tickets
//
//  Created by Александр on 15.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MapViewController.h"
#import "APIManager.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad
{
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen
                                                                              mainScreen].bounds.size.height);
    MKMapView *mapView = [[MKMapView alloc] initWithFrame: frame];
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(55.7522200, 37.6155600);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 1000000, 1000000);
    mapView.showsUserLocation = YES;
    [mapView setRegion: region animated: YES];
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.title = @"Moscow";
    annotation.subtitle = @"Russia";
    annotation.coordinate = CLLocationCoordinate2DMake(55.7522200, 37.6155600);
    
    MKPointAnnotation *annotation2 = [[MKPointAnnotation alloc] init];
    annotation2.title = @"Saint Petersburg";
    annotation2.subtitle = @"Russia";
    annotation2.coordinate = CLLocationCoordinate2DMake(59.9386300, 30.3141300);
    
    [mapView addAnnotation:annotation];
    [mapView addAnnotation:annotation2];
    
    [self.view addSubview:mapView];

}

@end
