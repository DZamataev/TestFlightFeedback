//
//  TestFlight+OpenFeedback.m
//  TestFlightFeedbackExample
//
//  Created by Denis Zamataev on 8/28/13.
//
//

#import "TestFlight+OpenFeedback.h"

@implementation TestFlight (OpenFeedback)

+ (void)openFeedbackView {
    TFFeedbackController *feedbackController = [[TFFeedbackController alloc] initWithNibName:[TFFeedbackController nibFileName]
                                                                                      bundle:nil];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    UIViewController *rootViewController = window.rootViewController;
    
    [rootViewController presentViewController:feedbackController animated:YES completion:nil];
}

@end
