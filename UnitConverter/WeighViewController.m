//
//  WeighViewController.m
//  UnitConverter
//
//  Created by Bruno Avelar on 17/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import "WeighViewController.h"

@interface WeighViewController ()

@end

@implementation WeighViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)kgChanged:(UITextField *)sender {
    
    NSString *kgValue = self.kgText.text;
    [self displayLbAmount:[kgValue doubleValue]];

}


- (IBAction)lbChanged:(UITextField *)sender {
    
    NSString *kgValue = self.lbText.text;
    [self displayKgAmount:[kgValue doubleValue]];
    
}

- (void)displayLbAmount:(double)amount
{
    amount = amount * 2.2;
    
    NSNumber *number = [NSNumber numberWithDouble:amount];
    NSString *value = [number stringValue];
    
    self.lbText.text = value;
}


- (void)displayKgAmount:(double)amount
{
    amount = amount * 0.45;
    
    NSNumber *number = [NSNumber numberWithDouble:amount];
    NSString *value = [number stringValue];
    
    self.kgText.text = value;
}

@end
