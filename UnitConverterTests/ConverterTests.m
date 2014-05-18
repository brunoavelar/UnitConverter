//
//  ConverterTests.m
//  UnitConverter
//
//  Created by Bruno Avelar on 08/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Converter.h"
#import "ImperialDistance.h"
#import "MetricDIstance.h"

@interface ConverterTests : XCTestCase

@end

@implementation ConverterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testToImperialShouldNotReturnNullObject
{
    MetricDistance *metric = [[MetricDistance alloc]initWithKilometers:1];
    ImperialDistance *imperial = [Converter toImperial:metric];
    
    XCTAssertNotNil(imperial);
}

- (void)testToImperialWith16KmShouldHave9Point94Miles{
    MetricDistance *metric = [[MetricDistance alloc] initWithKilometers:16];
    ImperialDistance *imperial = [Converter toImperial:metric];
    
    XCTAssertEqualWithAccuracy((double)9.94, imperial.miles, 0.01);
}

- (void)testToMetricWith16MilesShouldReturn25Point74Killometers
{
    ImperialDistance *imperial = [[ImperialDistance alloc] initWithMiles:16];
    MetricDistance *metric = [Converter toMetric:imperial];
    
    XCTAssertEqualWithAccuracy((double)25.74, metric.kilometers, 0.01);
}

@end
