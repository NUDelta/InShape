//
//  MapPoint.h
//  InShape
//
//  Created by Leesha Maliakal on 12/2/14.
//  Copyright (c) 2014 Leesha Maliakal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPoint : NSObject <MKAnnotation>
{
    
    NSString *_name;
//  NSString *_address;
    CLLocationDistance _distance;
    CLLocationCoordinate2D _coordinate;
    
}

@property (copy) NSString *name;
//@property (copy) NSString *address;
@property (nonatomic, readonly) CLLocationDistance distance;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;


//- (id)initWithName:(NSString*)name address:(NSString*)address coordinate:(CLLocationCoordinate2D)coordinate;
- (id)initWithName:(NSString*)name distance:(CLLocationDistance)distance coordinate:(CLLocationCoordinate2D)coordinate;

@end
