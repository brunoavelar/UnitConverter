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

- (IBAction)metricUnitChanged:(UISegmentedControl *)sender
{
   // MetricDistance *metric = [[MetricDistance alloc] initWithCentimeters:metricDistance];
    // Create a constructor "initWithUnit"

}

- (IBAction)metricDistanceChanged:(id)sender {
    
    double metricDistance = [self.txtMetricDistance.text doubleValue];
    MetricDistance *metric = [[MetricDistance alloc] initWithCentimeters:metricDistance];
    
    ImperialDistance *imperial = [Converter toImperial:metric];
    
    NSString *imperialText = [NSString stringWithFormat:@"%.2lf", imperial.inches];
    
    self.txtImperialDistance.text = imperialText;
}

- (IBAction)imperialDistanceChanged:(id)sender {
    
    double imperialDistance = [self.txtImperialDistance.text doubleValue];
    ImperialDistance *imperial = [[ImperialDistance alloc] initWithInches:imperialDistance];
    
    MetricDistance *metric = [Converter toMetric:imperial];
    
    NSString *metricText = [NSString stringWithFormat:@"%.2lf", metric.centimeters];
    
    self.txtMetricDistance.text = metricText;
}

- (MetricUnits)getSelectedNumericUnit
{
    MetricUnits selectedUnit;
    
    switch (self.metricUnit.selectedSegmentIndex) {
        case 0:
            selectedUnit = Centimeter;
            break;
        case 1:
            selectedUnit = Meter;
            break;
        case 2:
            selectedUnit = Kilometer;
            break;
        default:
            selectedUnit = Centimeter;
            break;
    }
    
    return selectedUnit;
}

@end
