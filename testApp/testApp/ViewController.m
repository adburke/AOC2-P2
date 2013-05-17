//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 5/16/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"
#import "InfoView.h"

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

-(IBAction)onClickBtn:(id)sender
{
    
    UIButton *button = (UIButton*)sender;
    if (button) {
        if (button.tag == 0) {
            NSLog(@"Weight Pressed");
            
            if (![workoutType isEqualToString: @"Weight"]) {
                stepper.value = 1;
                currentValue = stepper.value;
            }
            
            textField.text = [NSString stringWithFormat:@"%d Weight Workout", currentValue];
            workoutType = @"Weight";
            
            //Self
            weightButton.enabled = FALSE;
            weightButton.alpha = 0.5f;
            //Others
            swimButton.enabled = TRUE;
            swimButton.alpha = 1.0f;
            runButton.enabled = TRUE;
            runButton.alpha = 1.0f;
            
        } else if (button.tag == 1) {
            NSLog(@"Run Pressed");
            
            if (![workoutType isEqualToString: @"Run"]) {
                stepper.value = 1;
                currentValue = stepper.value;
            }
            
            textField.text = [NSString stringWithFormat:@"%d Run Workout", currentValue];
            workoutType = @"Run";
            
            //Self
            runButton.enabled = FALSE;
            runButton.alpha = 0.5f;
            //Others
            weightButton.enabled = TRUE;
            weightButton.alpha = 1.0f;
            swimButton.enabled = TRUE;
            swimButton.alpha = 1.0f;
            
        } else if (button.tag == 2) {
            NSLog(@"Swim Pressed");
            
            if (![workoutType isEqualToString: @"Swim"]) {
                stepper.value = 1;
                currentValue = stepper.value;
            }
            
            textField.text = [NSString stringWithFormat:@"%d Swim Workout", currentValue];
            workoutType = @"Swim";
            
            //Self
            swimButton.enabled = FALSE;
            swimButton.alpha = 0.5f;
            //Others
            weightButton.enabled = TRUE;
            weightButton.alpha = 1.0f;
            runButton.enabled = TRUE;
            runButton.alpha = 1.0f;
            
        } else if (button.tag == 3) {
            NSLog(@"Info Pressed");
            InfoView *infoView = [[InfoView alloc] initWithNibName:@"InfoView" bundle:nil];
            if (infoView) {
                [self presentViewController:infoView animated:TRUE completion:nil];
            }
        } else if (button.tag == 4) {
            if ([workoutType isEqualToString:@"Weight"]) {
                weightWorkout *weight = (weightWorkout*)[workoutFactory createNewWorkout:WEIGHT];
                if (currentValue > 1) {
                    textField.text = [NSString stringWithFormat:@"%d Weight Workouts --> %i", currentValue, [weight calculateCaloriesBurned]*currentValue ];
                } else {
                    textField.text = [NSString stringWithFormat:@"%d Weight Workout --> %i", currentValue, [weight calculateCaloriesBurned]*currentValue ];
                }
            } else if ([workoutType isEqualToString:@"Run"]) {
                runWorkout *run = (runWorkout*)[workoutFactory createNewWorkout:RUN];
                if (currentValue > 1) {
                    textField.text = [NSString stringWithFormat:@"%d Run Workouts --> %i", currentValue, ([run calculateCaloriesBurned]*currentValue) ];
                } else {
                    textField.text = [NSString stringWithFormat:@"%d Run Workout --> %i", currentValue, ([run calculateCaloriesBurned]*currentValue) ];
                }
            } else if ([workoutType isEqualToString:@"Swim"]) {
                swimWorkout *swim = (swimWorkout*)[workoutFactory createNewWorkout:SWIM];
                if (currentValue > 1) {
                    textField.text = [NSString stringWithFormat:@"%d Swim Workouts --> %i", currentValue, ([swim calculateCaloriesBurned]*currentValue) ];
                } else {
                    textField.text = [NSString stringWithFormat:@"%d Swim Workout --> %i", currentValue, ([swim calculateCaloriesBurned]*currentValue) ];
                }
            }
            
        }
    }
}

-(IBAction)onChange:(id)sender
{
    UISegmentedControl *segCntrl = (UISegmentedControl*)sender;
    if (segCntrl) {
        int index = segCntrl.selectedSegmentIndex;
        NSLog(@"Index #:%d selected", index);
        if (segCntrl.selectedSegmentIndex == 0) {
            self.view.backgroundColor = [UIColor blueColor];
        } else if (segCntrl.selectedSegmentIndex == 1) {
            self.view.backgroundColor = [UIColor yellowColor];
        } else if (segCntrl.selectedSegmentIndex == 2) {
            self.view.backgroundColor = [UIColor orangeColor];
        } else if (segCntrl.selectedSegmentIndex == 3) {
            self.view.backgroundColor = [UIColor whiteColor];
        }
    }
}

- (void)viewDidLoad
{
    textField.text = @"Calculation of Calories";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
