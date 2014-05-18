//
//  Imperial.m
//  UnitConverter
//
//  Created by Bruno Avelar on 01/02/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import "ImperialDistance.h"

@implementation ImperialDistance

- (id)initWithInches:(double)amount{
    self = [super init];
    self.inches = amount;
    
    return self;
}

- (id)initWithFeet:(double)amount{
    self = [self initWithInches:amount * 12];
    
    return self;
}

- (id)initWithMiles:(double)amount{
    self = [self initWithFeet:amount * 5280];
    
    return self;
}

- (void)setFeet:(double)feet{
    self.inches = feet * 12;
}

- (double)feet{
    return self.inches / 12;
}

- (void)setMiles:(double)miles{
    self.inches = miles * 63360;
}

- (double)miles{
    return self.inches / 63360;
}

@end
