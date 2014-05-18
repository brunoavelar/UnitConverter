//
//  Converter.h
//  UnitConverter
//
//  Created by Bruno Avelar on 08/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MetricDistance.h"
#import "ImperialDistance.h"

@interface Converter : NSObject

+ (ImperialDistance*)toImperial:(MetricDistance*)metric;
+ (MetricDistance*)toMetric:(ImperialDistance*)imperial;

@end
