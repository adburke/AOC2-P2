//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 5/16/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIButton *weightButton;
    IBOutlet UIButton *runButton;
    IBOutlet UIButton *swimButton;
    IBOutlet UIButton *calcButton;
    IBOutlet UIStepper *stepper;
    
    int currentValue;
    NSString *workoutType;
    
}
-(IBAction)onClickIncr:(id)sender;
-(IBAction)onClickBtn:(id)sender;
-(IBAction)onChange:(id)sender;

@end
