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
    
    while (rootViewController.presentedViewController) {
        rootViewController = rootViewController.presentedViewController;
    }
    
    [rootViewController presentViewController:feedbackController animated:YES completion:nil];
}

+ (NSString*)of_ApplicationVersion
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString*)of_ApplicationBuild
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

+ (NSString*)of_ApplicationVersionBuild
{
    return [NSString stringWithFormat:@"version %@ (%@)", [TestFlight of_ApplicationVersion], [TestFlight of_ApplicationBuild]];
}

/* Shake recognition */

static BOOL of_isWindowShakeNotificationRegistered = NO;
static TFFeedbackOpener * of_feedbackOpener = nil;

+ (void)of_enableOpenFeedbackOnShake {
    if (!of_isWindowShakeNotificationRegistered) {
        [UIWindow TestFlightFeedbackShakeNotification_register];
        of_feedbackOpener = [TFFeedbackOpener new];
        [[NSNotificationCenter defaultCenter] addObserver:of_feedbackOpener
                                                 selector:@selector(handleShakeNotification:)
                                                     name:@"TFFDeviceShakenNotification"
                                                   object:nil];
        of_isWindowShakeNotificationRegistered = YES;
    }
    if (of_feedbackOpener) {
        of_feedbackOpener.isOpenFeedbackOnShakeEnabled = YES;
    }
    else {
        NSLog(@"Error: cannot enable open feedback on shake!");
    }
}

+ (void)of_disableOpenFeedbackOnShake {
    if (of_feedbackOpener) {
        of_feedbackOpener.isOpenFeedbackOnShakeEnabled = NO;
    }
    else {
        NSLog(@"Error: cannot disable open feedback on shake!");
    }
}

//+ (void)of_addMotionEndedImplementation {
//    BOOL success = class_addMethod([UIWindow class], @selector(motionEnded:withEvent:), (IMP)of_motionEndedIMP, "v@:i@");
//    NSLog(@"added method successfully? %i", (int)success);
//    
//    of_isMotionImplementationAdded = success;
//}
//
//void of_motionEndedIMP(id self, SEL _cmd, UIEventSubtype motion, UIEvent* event)
//{
//    if (of_isMotionImplementationShouldBeUsed) {
//        if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
//            [[NSNotificationCenter defaultCenter] postNotificationName:@"DeviceShaken" object:self];
//        }
//    }
//}



//- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
//    NSLog(@"motion ended");
//    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
//        NSLog(@"... of type shake");
//    	[[NSNotificationCenter defaultCenter] postNotificationName:@"DeviceShaken" object:self];
//    }
//}

@end
