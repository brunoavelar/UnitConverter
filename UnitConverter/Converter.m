//
//  Converter.m
//  UnitConverter
//
//  Created by Bruno Avelar on 08/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import "Converter.h"


@implementation Converter

+ (ImperialDistance*) toImperial:(MetricDistance *)metric{
    double factor = 0.393700787;
    
    ImperialDistance *value = [[ImperialDistance alloc]
                               initWithInches:metric.centimeters * factor];
    
    return value;
}

+ (MetricDistance*) toMetric:(ImperialDistance *)imperial{
    double factor = 2.54;
    
    MetricDistance *value = [[MetricDistance alloc]
                             initWithCentimeters:imperial.inches * factor];
    
    return value;
}

@end
