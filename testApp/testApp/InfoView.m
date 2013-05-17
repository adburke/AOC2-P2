//
//  InfoView.m
//  testApp
//
//  Created by Aaron Burke on 5/16/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "InfoView.h"

@interface InfoView ()

@end

@implementation InfoView

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button) {
        if (button.tag == 0) {
            NSLog(@"Close Modal Pressed");
            [self dismissViewControllerAnimated:TRUE completion:nil];
        } else if (button.tag == 1) {
            NSLog(@"Email Me Pressed");
            // Create mail object and link to delegate method below
            if ([MFMailComposeViewController canSendMail]) {
                MFMailComposeViewController *sendMail = [[MFMailComposeViewController alloc] init];
                if (sendMail) {
                    sendMail.mailComposeDelegate = self;
                    [sendMail setSubject:@"Email from Test App!"];
                    [sendMail setMessageBody:@"Test Email" isHTML:FALSE];
                    [sendMail setToRecipients:@[@"aaronburke@fullsail.edu"]];
                    [self presentViewController:sendMail animated:YES completion:nil];
                }
            }
        }
    }
}

// Mail Delegate
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result) {
        case MFMailComposeResultCancelled:
            break;
        case MFMailComposeResultSaved:
            break;
        case MFMailComposeResultSent:
            break;
            
        default:
            break;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
