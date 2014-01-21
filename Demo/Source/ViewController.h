//
//  ViewController.h
//  TestFlightFeedback
//
//  Created by Denis Zamataev on 8/29/13.
//  Copyright (c) 2013 Denis Zamataev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TestFlight.h>
#import "TestFlight+OpenFeedback.h"


@interface ViewController : UIViewController
{
}

- (IBAction)openFeedback:(id)sender;
- (IBAction)switchOpensOnShake:(id)sender;
@end
