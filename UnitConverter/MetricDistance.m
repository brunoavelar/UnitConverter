//
//  Metric.m
//  UnitConverter
//
//  Created by Bruno Avelar on 31/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import "MetricDistance.h"

@implementation MetricDistance

- (id)initWithCentimeters:(double)amount{
    self = [super init];
    self.centimeters = amount;
    
    return self;
}

- (id)initWithMeters:(double)amount{
    self = [self initWithCentimeters:amount * 100];
    
    return self;
}

- (id)initWithKilometers:(double)amount{
    self = [self initWithMeters:amount * 1000];

    return self;
}

- (double)meters{
    return self.centimeters / 100;
}

- (void)setMeters:(double)amount{
    self.centimeters = amount * 100;
}

- (double)kilometers{
    return self.meters / 1000;
}

- (void)setKilometers:(double)amount{
    self.meters = amount * 1000;
}

@end
