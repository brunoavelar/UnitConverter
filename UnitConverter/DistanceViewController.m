//
//  DistanceViewController.m
//  UnitConverter
//
//  Created by Bruno Avelar on 17/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import "DistanceViewController.h"
#import "ImperialDistance.h"
#import "MetricDistance.h"
#import "Converter.h"

@interface DistanceViewController ()

@end

@implementation DistanceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)metricDistanceChanged:(id)sender {
    double metricDistance = [self.txtMetricDistance.text doubleValue];
    MetricDistance *metric = [[MetricDistance alloc] initWithCentimeters:metricDistance];
    
    
    [[NSString alloc] initWith]
    
    ImperialDistance *imperial = [Converter toImperial:metric];
    self.txtImperialDistance.text = imperial.inches
    
    
}

- (IBAction)imperialDistanceChanged:(id)sender {
    
}
@end
