//
//  ViewController.m
//  TestFlightFeedback
//
//  Created by Denis Zamataev on 8/29/13.
//  Copyright (c) 2013 Denis Zamataev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)openFeedback:(id)sender
{
    [TestFlight openFeedbackView];
}

@end
