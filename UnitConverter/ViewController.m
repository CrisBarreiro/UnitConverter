//
//  ViewController.m
//  UnitConverter
//
//  Created by cristina on 6/11/16.
//  Copyright © 2016 crisbarreiro. All rights reserved.
//

#import "ViewController.h"

double convertUnitOneToUnitTwo(double unitOneValue) {
    double unitTwoValue;
    unitTwoValue = 10*unitOneValue;
    return unitTwoValue;
}

double convertUnitOneToUnitThree(double unitOneValue) {
    double unitThreeValue;
    unitThreeValue = 100*unitOneValue;
    return unitThreeValue;
}

double convertUnitOneToUnitFour(double unitOneValue) {
    double unitFourValue;
    unitFourValue = 1000*unitOneValue;
    return unitFourValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buffer = [NSMutableString new];
    double userInput = [self.inputField.text doubleValue];
    double value = 0;
    switch (self.segmentController.selectedSegmentIndex) {
        case 0:
        {
            value = convertUnitOneToUnitTwo(userInput);
            
            [buffer appendString:[@(value) stringValue]];
            [buffer appendString:@" dm"];
        }
            break;
        case 1:
        {
            [buffer appendString:[@(value) stringValue]];
            [buffer appendString:@" cm"];
            
        }
            break;
        case 2:
        {
            [buffer appendString:[@(value) stringValue]];
            [buffer appendString:@" mm"];
            
        }
            break;
    }
    self.outputField.text = buffer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
