//
//  MapPoint.m
//  InShape
//
//  Created by Leesha Maliakal on 12/2/14.
//  Copyright (c) 2014 Leesha Maliakal. All rights reserved.
//

#import "MapPoint.h"

@implementation MapPoint
@synthesize name = _name;
//@synthesize address = _address;
@synthesize distance = _distance;
@synthesize coordinate = _coordinate;

//-(id)initWithName:(NSString*)name address:(NSString*)address coordinate:(CLLocationCoordinate2D)coordinate  {
-(id)initWithName:(NSString*)name distance:(CLLocationDistance)distance coordinate:(CLLocationCoordinate2D)coordinate  {
    if ((self = [super init])) {
        _name = [name copy];
//      _address = [address copy];
        _distance = distance;
        _coordinate = coordinate;
        
    }
    return self;
}

-(NSString *)title {
    if ([_name isKindOfClass:[NSNull class]])
        return @"Unknown charge";
    else
        return _name;
}

-(NSString *)subtitle {
//  return _address;
    //change distance to miles
    //change distance to string
    NSNumber *distanceNumber = [NSNumber numberWithDouble: _distance];
//  NSString *distanceString = [distanceNumber stringValue];
    NSString *distanceString = [NSString stringWithFormat:@"%f miles", _distance*0.000621371];
    return distanceString;

}

@end