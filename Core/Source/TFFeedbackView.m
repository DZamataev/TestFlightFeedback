//
//  TFFeedbackView.m
//  TestFlightFeedbackExample
//
//  Created by Denis Zamataev on 8/28/13.
//
//

#import "TFFeedbackView.h"

@implementation TFFeedbackView

- (void)setBackgroundColorPattern:(NSString*)patternImageName {
    _backgroundColorPattern = patternImageName;
    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:_backgroundColorPattern]];
}

- (NSString*)backgroundColorPattern {
    return _backgroundColorPattern;
}

#pragma mark -

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/



@end
