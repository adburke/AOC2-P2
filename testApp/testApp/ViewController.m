//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/16/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onClickIncr:(id)sender
{
    if (stepper){
        if (stepper.tag == 0 && workoutType) {
            NSLog(@"step pressed");
            currentValue = stepper.value;
            if (currentValue > 1) {
                textField.text = [NSString stringWithFormat:@"%d %@ Workouts", currentValue, workoutType];
            } else {
                textField.text = [NSString stringWithFormat:@"%d %@ Workout", currentValue, workoutType];
            }
            
        }
    }
}

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

@end
