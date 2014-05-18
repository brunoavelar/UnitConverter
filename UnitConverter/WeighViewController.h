//
//  WeighViewController.h
//  UnitConverter
//
//  Created by Bruno Avelar on 17/01/14.
//  Copyright (c) 2014 Bruno Avelar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeighViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *kgText;

- (IBAction)kgChanged:(UITextField *)sender;

@property (weak, nonatomic) IBOutlet UITextField *lbText;
- (IBAction)lbChanged:(UITextField *)sender;


- (void)displayKgAmount:(double)amount;
- (void)displayLbAmount:(double)amount;

@end


