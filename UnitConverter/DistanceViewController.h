//
//  DistanceViewController.h
//  UnitConverter
//
//  Created by Bruno Avelar on 17/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MetricDistance.h"
#import "ImperialDistance.h"
#import "Converter.h"

@interface DistanceViewController : UIViewController
@property (nonatomic) MetricDistance *metricDistance;
@property (nonatomic) ImperialDistance *imperialDistance;
@property (nonatomic) Converter *converter;

@property (weak, nonatomic) IBOutlet UITextField *txtMetricDistance;
@property (weak, nonatomic) IBOutlet UITextField *txtImperialDistance;

- (IBAction)metricDistanceChanged:(id)sender;
- (IBAction)imperialDistanceChanged:(id)sender;


@end
