//
//  ImperialTests.m
//  UnitConverter
//
//  Created by Bruno Avelar on 01/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ImperialDistance.h"

@interface ImperialTests : XCTestCase

@property (nonatomic) ImperialDistance *imperial;

@end

@implementation ImperialTests

- (void)setUp
{
    [super setUp];
    self.imperial = [[ImperialDistance alloc]init];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testInitShouldStartWith0Inches
{
    ImperialDistance *value = [[ImperialDistance alloc] init];
    
    XCTAssertEqual((double)0, value.inches);
}

- (void)testInitWithInches7ShouldHave7Inches{
    ImperialDistance *value = [[ImperialDistance alloc] initWithInches:7];
    
    XCTAssertEqual((double)7, value.inches);
}

- (void)testInitWithFeet7ShouldHave84Inches{
    ImperialDistance *value = [[ImperialDistance alloc] initWithFeet:7];
    
    XCTAssertEqual((double)84, value.inches);
}

- (void)testInitWithMiles7ShouldHave443520Inches{
    ImperialDistance *value = [[ImperialDistance alloc] initWithMiles:7];
    
    XCTAssertEqual((double)443520, value.inches);
}

- (void)testSet3FeetShouldHave36Inches{
    self.imperial.feet = 3;
    
    XCTAssertEqual((double)36, self.imperial.inches);
}

- (void)testSet84InchesShouldHave7Feet{
    self.imperial.inches = 84;
    
    XCTAssertEqual((double)7, self.imperial.feet);
}

- (void)testSet3MilesShouldHave190080Inches{
    self.imperial.miles = 3;
    
    XCTAssertEqual((double)190080, self.imperial.inches);
}

- (void)testSet506880InchesShouldHave8Miles{
    self.imperial.inches = 506880;
    
    XCTAssertEqual((double)8, self.imperial.miles);
}


@end
