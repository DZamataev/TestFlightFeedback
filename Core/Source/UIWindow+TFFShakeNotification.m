//
//  UIWindow+TFFShakeNotification.m
//  TestFlightFeedback
//
//  Created by Denis Zamataev on 1/21/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "UIWindow+TFFShakeNotification.h"

@implementation UIWindow (TFFShakeNotification)

void TestFlightFeedbackShakeNotification_SwizzleInstanceMethod(Class c, SEL orig, SEL new) {
    
    Method origMethod = class_getInstanceMethod(c, orig);
    Method newMethod = class_getInstanceMethod(c, new);
    
    if(class_addMethod(c, orig, method_getImplementation(newMethod), method_getTypeEncoding(newMethod)))
        class_replaceMethod(c, new, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    else
        method_exchangeImplementations(origMethod, newMethod);
}

- (void)TestFlightFeedbackShakeNotification_motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"TFFDeviceShakenNotification" object:nil userInfo:nil];
    }
}

+ (void)TestFlightFeedbackShakeNotification_register {
    TestFlightFeedbackShakeNotification_SwizzleInstanceMethod([UIWindow class],
                                                              @selector(motionEnded:withEvent:),
                                                              @selector(TestFlightFeedbackShakeNotification_motionEnded:withEvent:));
}
@end
