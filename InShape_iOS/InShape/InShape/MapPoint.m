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
-(id)initWithName:(NSString*)name coordinate:(CLLocationCoordinate2D)coordinate  {
    if ((self = [super init])) {
        _name = [name copy];
//      _address = [address copy];
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

//-(NSString)subtitle {
//-(CLLocationDistance)subtitle {
//  return _address;
//    return _distance;
//}

@end