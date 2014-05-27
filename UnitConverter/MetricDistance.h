//
//  Metric.h
//  UnitConverter
//
//  Created by Bruno Avelar on 31/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MetricDistance : NSObject

- (id)initWithMeters:(double)amount;
- (id)initWithCentimeters:(double)amount;
- (id)initWithKilometers:(double)amount;

@property (nonatomic) double centimeters;
@property (nonatomic) double meters;
@property (nonatomic) double kilometers;

typedef enum metricUnitsTypes
{
    Centimeter,
    Meter,
    Kilometer
} MetricUnits;

@end
