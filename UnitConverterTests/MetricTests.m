//
//  MetricTests.m
//  UnitConverter
//
//  Created by Bruno Avelar on 31/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MetricDistance.h"
#import "ImperialDistance.h"

@interface MetricTests : XCTestCase

@property (nonatomic) MetricDistance *metric;

@end

@implementation MetricTests



- (void)setUp
{
    [super setUp];
    
    self.metric = [[MetricDistance alloc] init];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

//TODO: Add killometers constructor

- (void)testInitShouldStartWith0Centimeters{
    MetricDistance *value = [[MetricDistance alloc] init];
    
    XCTAssertEqual((double)0, value.centimeters);
}

- (void)testInitWithCentimeters1ShouldHave1Centimenter{
    MetricDistance *value = [[MetricDistance alloc] initWithCentimeters:1];
    
    XCTAssertEqual((double)1, value.centimeters);
}

- (void)testInitWithCentimeters5ShouldHave5Centimenter{
    MetricDistance *value = [[MetricDistance alloc] initWithCentimeters:5];
    
    XCTAssertEqual((double)5, value.centimeters);
}

- (void)testInitWithMeters1ShouldHave100Centimenters{
    MetricDistance *value = [[MetricDistance alloc] initWithMeters:1];
    
    XCTAssertEqual((double)100, value.centimeters);
}

- (void)testInitWithMeters5ShouldHave500Centimenters{
    MetricDistance *value = [[MetricDistance alloc] initWithMeters:5];
    
    XCTAssertEqual((double)500, value.centimeters);
}

- (void)testInitWithKilometers3ShouldHave300000Centimeters{
    MetricDistance *value = [[MetricDistance alloc]initWithKilometers:3];
    
    XCTAssertEqual((double)300000, value.centimeters);
}

- (void)testWith1300CentimetersShouldHave13Meters{
    self.metric.centimeters = 1300;
    
    XCTAssertEqual((double)13, self.metric.meters);
}

- (void)testWith23MetersShouldHave2300Centimeters{
    self.metric.meters = 23;
    
    XCTAssertEqual((double)2300, self.metric.centimeters);
}

- (void)testWith3Point2KilometersShouldHave3200Meters{
    self.metric.kilometers = 3.2;
    
    XCTAssertEqual((double)3200, self.metric.meters);
}

- (void)testWith4Point7KilometersShouldHave470000Centimeters{
    self.metric.kilometers = 4.7;
    
    XCTAssertEqual((double)470000, self.metric.centimeters);
}

@end
