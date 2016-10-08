//
//  SettingsView.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "SettingsView.h"
#import "UIView+Autolayout.h"

@interface SettingsView() {
    //TODO: WTF IS THIS!!! _button ?!
    UIButton *_button;
    UIView *_background;
}
@end

@interface SettingsView(Private)
- (void)setupSettingsView;
- (void) updateButtonWidthConstraint:(CGFloat)widthConstraint heightConstraint:(CGFloat)heightConstraint leadingConstraint:(CGFloat)leadingConstraing topConstraint:(CGFloat)topConstraint;
@end

@implementation SettingsView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSettingsView];
    }
    return self;
}

- (void) updateView {
    [_button removeConstraints:[_button constraints]];
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait) {
        //TODO: Just update these values , 200,100,100,300
        [self updateButtonWidthConstraint:200 heightConstraint:100 leadingConstraint:100 topConstraint:300];
    } else {
        //TODO: Just update these values , 200,100,100,100
        [self updateButtonWidthConstraint:200 heightConstraint:100 leadingConstraint:100 topConstraint:100];
    }
}
@end

@implementation SettingsView(Private)
- (void) setupSettingsView{
    [self setBackgroundColor:[UIColor clearColor]];
    [self setupBackground];
    [self setupButton];
}

- (void) setupBackground{
    _background = [[UIView alloc]initWithFrame:CGRectZero];
    [_background setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_background];
    
    [_background addTopConstraint:0];
    [_background addBottomConstraint:0];
    [_background addLeadingConstraint:0];
    [_background addTrailingConstraint:0];
    
    [_background setBackgroundColor:[UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.85]];
    UILongPressGestureRecognizer *singleFingerTap =
    [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(dismissSettings)];
    singleFingerTap.minimumPressDuration=0;
    [_background addGestureRecognizer:singleFingerTap];
    
}

- (void) setupButton{
    _button = [[UIButton alloc]initWithFrame:CGRectZero];
    [_button setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_button];
    
    [_button addWidthConstraint:200];
    [_button addHeightConstraint:100];
    [_button addLeadingConstraint:100];
    [_button addTopConstraint:300];
    
    [_button setBackgroundColor:[UIColor blueColor]];
    [_button addTarget:self action:@selector(dismissSettings) forControlEvents:UIControlEventTouchUpInside];
}

- (void)dismissSettings {
    [_button setBackgroundColor:[UIColor yellowColor]];
    [self.delegate buttonTapped];
}

- (void) updateButtonWidthConstraint:(CGFloat)widthConstraint heightConstraint:(CGFloat)heightConstraint leadingConstraint:(CGFloat)leadingConstraing topConstraint:(CGFloat)topConstraint {
    [_button removeConstraints:[_button constraints]];
    [_button addWidthConstraint:widthConstraint];
    [_button addHeightConstraint:heightConstraint];
    [_button addLeadingConstraint:leadingConstraing];
    [_button addTopConstraint:topConstraint];
}
@end
