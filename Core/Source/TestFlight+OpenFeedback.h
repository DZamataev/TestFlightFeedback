//
//  TestFlight+OpenFeedback.h
//  TestFlightFeedbackExample
//
//  Created by Denis Zamataev on 8/28/13.
//
//

#import <TestFlight.h>
#import <objc/runtime.h>
#import "TFFeedbackController.h"
#import "UIWindow+TFFShakeNotification.h"
#import "TFFeedbackOpener.h"


@interface TestFlight (OpenFeedback)


+ (void)openFeedbackView;

+ (NSString*)of_ApplicationVersion;
+ (NSString*)of_ApplicationBuild;
+ (NSString*)of_ApplicationVersionBuild;

+ (void)of_enableOpenFeedbackOnShake;
+ (void)of_disableOpenFeedbackOnShake;

@end
