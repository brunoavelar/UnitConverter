//
//  Imperial.h
//  UnitConverter
//
//  Created by Bruno Avelar on 01/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImperialDistance : NSObject

- (id)initWithFeet:(double)amount;
- (id)initWithInches:(double)amount;
- (id)initWithMiles:(double)amount;

@property (nonatomic) double inches;
@property (nonatomic) double feet;
@property (nonatomic) double miles;

@end
