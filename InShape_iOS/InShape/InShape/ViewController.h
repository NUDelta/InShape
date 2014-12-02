//
//  ViewController.h
//  InShape
//
//  Created by Leesha Maliakal on 11/19/14.
//  Copyright (c) 2014 Leesha Maliakal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

#define kGOOGLE_API_KEY @"AIzaSyCyCduNi0BmBuLfYY4MCe9NKJkyvtNnoDs"
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    CLLocationCoordinate2D currentCentre;
    int currenDist;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
