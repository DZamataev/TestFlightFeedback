//
//  TFFeedbackOpener.m
//  TestFlightFeedback
//
//  Created by Denis Zamataev on 1/21/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import "TFFeedbackOpener.h"
#import "TestFlight+OpenFeedback.h"

@implementation TFFeedbackOpener
- (void)handleShakeNotification:(NSNotification *)notification
{
    if (self.isOpenFeedbackOnShakeEnabled)
        [TestFlight openFeedbackView];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self forKeyPath:@"TFFDeviceShakenNotification"];
}
@end
