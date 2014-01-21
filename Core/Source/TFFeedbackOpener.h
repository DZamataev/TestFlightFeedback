//
//  TFFeedbackOpener.h
//  TestFlightFeedback
//
//  Created by Denis Zamataev on 1/21/14.
//  Copyright (c) 2014 Denis Zamataev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TFFeedbackOpener : NSObject
@property BOOL isOpenFeedbackOnShakeEnabled;
- (void)handleShakeNotification:(NSNotification*)notification;
@end
