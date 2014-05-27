//
//  DistanceViewControllerTests.m
//  UnitConverter
//
//  Created by Bruno Avelar on 26/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DistanceViewController.h"

@interface DistanceViewControllerTests : XCTestCase
@property (nonatomic) DistanceViewController *vc;
@end

@implementation DistanceViewControllerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.vc = [storyboard instantiateViewControllerWithIdentifier:@"distance"];
    [self.vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testMetricDistanceChangedShouldChangeTxtImperialDistance
{
    self.vc.txtImperialDistance.text = @"123";
    self.vc.txtMetricDistance.text = @"456";
    NSString *imperialDistance = self.vc.txtImperialDistance.text;
    
    
    [self.vc metricDistanceChanged:Nil];
    
    XCTAssertNotEqualObjects(imperialDistance, self.vc.txtImperialDistance.text);
}

- (void)testType200InMetricDistanceShouldChangeTxtImperialDistanceTo78Point74
{
    self.vc.txtMetricDistance.text = @"200";
    [self.vc metricDistanceChanged:nil];
    
    NSString *imperialDistance = self.vc.txtImperialDistance.text;
    
    XCTAssertEqualObjects(@"78.74", imperialDistance);
}

- (void)testImperialDistanceChangedShouldChangeTxtMetricDistance
{
    self.vc.txtImperialDistance.text = @"123";
    self.vc.txtMetricDistance.text = @"456";
    NSString *metricDistance = self.vc.txtMetricDistance.text;
    
    
    [self.vc imperialDistanceChanged:Nil];
    
    XCTAssertNotEqualObjects(metricDistance, self.vc.txtMetricDistance.text);
}

- (void)testType78Point74InImperialDistanceShouldChangeTxtMetricDistanceTo200
{
    self.vc.txtImperialDistance.text = @"78.74";
    [self.vc imperialDistanceChanged:nil];
    
    NSString *metricDistance = self.vc.txtMetricDistance.text;
    
    XCTAssertEqualObjects(@"200.00", metricDistance);
}

- (void)testChangeCmToMeterShouldUpdateImperialValue
{
    self.vc.txtMetricDistance.text = @"10";
    [self.vc metricUnitChanged: nil];
    
    NSString *imperialDistance = self.vc.txtImperialDistance.text;
    
    XCTAssertEqualObjects(@"393.70", imperialDistance);
}

- (void)testGetSelectedNumericUnit0ShouldReturnCm
{
    self.vc.metricUnit.selectedSegmentIndex = 0;
    MetricUnits unit = [self.vc getSelectedNumericUnit];
    
    
    XCTAssertEqual(Centimeter, unit);
}

- (void)testGetSelectedNumericUnit1ShouldReturnMeter
{
    self.vc.metricUnit.selectedSegmentIndex = 1;
    MetricUnits unit = [self.vc getSelectedNumericUnit];
    
    
    XCTAssertEqual(Meter, unit);
}

- (void)testGetSelectedNumericUnit2ShouldReturnKm
{
    self.vc.metricUnit.selectedSegmentIndex = 2;
    MetricUnits unit = [self.vc getSelectedNumericUnit];
    
    
    XCTAssertEqual(Kilometer, unit);}



@end
