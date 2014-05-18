//
//  UnitConverterTests.m
//  UnitConverterTests
//
//  Created by Bruno Avelar on 17/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WeighViewController.h"

@interface UnitConverterTests : XCTestCase

@property (nonatomic) WeighViewController *vc;

@end

@implementation UnitConverterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.vc = [storyboard instantiateViewControllerWithIdentifier:@"weigh"];
    [self.vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



//- (void)testDisplayKgAmountFor0LbShouldBe0
//{
//    [self.vc displayKgAmount:0];
//    NSString *result = self.vc.kgText.text;
//    
//    XCTAssertEqualObjects(result, @"0.00");
//}
//
//- (void)testDisplayKgAmountFor20LbShouldBe9Point09
//{
//    [self.vc displayKgAmount:20];
//    NSString *result = self.vc.kgText.text;
//    
//    XCTAssertEqualObjects(result, @"9.09");
//}
//
//- (void)testDisplayLbAmountFor0KgShouldBe0
//{
//    [self.vc displayLbAmount:0];
//    NSString *result = self.vc.lbText.text;
//    
//    XCTAssertEqualObjects(result, @"0.00");
//}
//
//- (void)testDisplayKgAmountFor20LbShouldBe44
//{
//    [self.vc displayLbAmount:20];
//    NSString *result = self.vc.lbText.text;
//    
//    XCTAssertEqualObjects(result, @"44");
//}



@end
