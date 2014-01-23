//
//  TFFeedbackController.m
//  TestFlightFeedbackExample
//
//  Created by Denis Zamataev on 8/27/13.
//
//

#import "TFFeedbackController.h"
#import "TestFlight+OpenFeedback.h"



@interface TFFeedbackController ()

@end

@implementation TFFeedbackController

+ (NSString*)nibFileName
{
    return [NSString stringWithFormat:@"%@%@", NSStringFromClass([TFFeedbackController class]), TFFeedback_INTERFACE_IDIOM_SPECIFIC_ENDING];
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
    _textViewBottomSpacingConstraintInitialValue = _textViewBottomSpacingConstraint.constant;
    _versionLabel.text = [TestFlight of_ApplicationVersionBuild];
    _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _titleLabel.text = NSLocalizedStringFromTable(@"title_label_text", @"TestFlightFeedbackLocalizable", nil);
}

- (void)viewWillAppear:(BOOL)animated
{
    [_textView becomeFirstResponder];
    [self changeTextViewBottomSpacingConstraintToSupportInterfaceOrientation:[UIApplication sharedApplication].statusBarOrientation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

#pragma mark - Actions

- (IBAction)cancel:(id)sender
{
    [self dismiss];
}

- (IBAction)submit:(id)sender
{
    NSString *feedbackText = _textView.text;
    [TestFlight submitFeedback:feedbackText];
    [self dismiss];
}

- (void)dismiss
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:NULL];
}

- (void)changeTextViewBottomSpacingConstraintToSupportInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (UIInterfaceOrientationIsLandscape(interfaceOrientation)) {
        _textViewBottomSpacingConstraint.constant = TFFeedback_INTERFACE_IDIOM_SPECIFIC_TEXT_FIELD_BOTTOM_SPACING_FOR_LANDSCAPE_ORIENTATION;
    }
    else {
        _textViewBottomSpacingConstraint.constant = _textViewBottomSpacingConstraintInitialValue;
    }
    [self.view layoutIfNeeded];
}

#pragma mark - Interface orientation changes

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self changeTextViewBottomSpacingConstraintToSupportInterfaceOrientation:toInterfaceOrientation];
}

@end
