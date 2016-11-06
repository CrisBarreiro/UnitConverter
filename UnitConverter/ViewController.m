//
//  ViewController.m
//  UnitConverter
//
//  Created by cristina on 6/11/16.
//  Copyright © 2016 crisbarreiro. All rights reserved.
//

#import "ViewController.h"

double convertTodm(double unitOneValue) {
    double dmValue;
    dmValue = 10*unitOneValue;
    return dmValue;
}

double convertTocm(double unitOneValue) {
    double cmValue;
    cmValue = 100*unitOneValue;
    return cmValue;
}

double convertTomm(double unitOneValue) {
    double mmValue;
    mmValue = 1000*unitOneValue;
    return mmValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *strValue = [NSMutableString new];
    double userInput = [self.inputField.text doubleValue];
    double value = 0;
    NSString *unit;
    switch (self.segmentController.selectedSegmentIndex) {
        case 0:
            value = convertTodm(userInput);
            unit = @" dm";
            break;
        case 1:
            value = convertTocm(userInput);
            unit = @" cm";
            break;
        case 2:
            value = convertTomm(userInput);
            unit = @" mm";
            break;
    }
    [strValue appendString:[@(value) stringValue]];
    [strValue appendString: unit];
    self.outputField.text = strValue;
}

- (IBAction)resetButton:(id)sender {
    self.segmentController.selectedSegmentIndex = 0;
    [self.outputField setText:(@"Click Update for the answer")];
    [self.inputField setText:(@"")];
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
