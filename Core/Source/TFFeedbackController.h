//
//  TFFeedbackController.h
//  TestFlightFeedbackExample
//
//  Created by Denis Zamataev on 8/27/13.
//
//

#import <UIKit/UIKit.h>
#import <TestFlight.h>

#define TFFeedback_IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define TFFeedback_INTERFACE_IDIOM_SPECIFIC_ENDING (TFFeedback_IS_IPAD ? @"_iPad" : @"_iPhone")
#define TFFeedback_INTERFACE_IDIOM_SPECIFIC_TEXT_FIELD_BOTTOM_SPACING_FOR_LANDSCAPE_ORIENTATION (TFFeedback_IS_IPAD ? 380.0f : 164.0f)

@interface TFFeedbackController : UIViewController
{
    IBOutlet UITextView *_textView;
    IBOutlet NSLayoutConstraint *_textViewBottomSpacingConstraint;
    IBOutlet UILabel *_versionLabel;
    IBOutlet UILabel *_titleLabel;
    CGFloat _textViewBottomSpacingConstraintInitialValue;
}
+ (NSString*)nibFileName;

- (IBAction)cancel:(id)sender;
- (IBAction)submit:(id)sender;
@end
