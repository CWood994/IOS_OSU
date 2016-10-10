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
    UIView *_menuBackgroundOutter;
    UIView *_menuBackgroundInnner;
    UILabel *_SettingsTitle;
}
@end

@interface SettingsView(Private)
-(void)setupSettingsView;
@end

@implementation SettingsView

@synthesize exitButton = _exitButton;
@synthesize background = _background;

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSettingsView];
    }
    return self;
}

@end

@implementation SettingsView(Private)
- (void) setupSettingsView{
    [self setBackgroundColor:[UIColor clearColor]];
    [self setupBackground];
    [self setupMenuOutter];
    [self setupMenuInner];
    [self setupButton];
    [self setupTitle];
}

- (void) setupBackground{
    _background = [[UIView alloc]initWithFrame:CGRectZero];
    [_background setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_background];
    
    [_background addTopConstraint:0];
    [_background addBottomConstraint:0];
    [_background addLeadingConstraint:0];
    [_background addTrailingConstraint:0];
    
    [_background setBackgroundColor:[UIColor colorWithRed:0.15 green:0.15 blue:0.15 alpha:0.8]];
}

- (void) setupMenuOutter{
    _menuBackgroundOutter = [[UIView alloc]initWithFrame:CGRectZero];
    [_menuBackgroundOutter setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_menuBackgroundOutter];
    
    [_menuBackgroundOutter addTopConstraint:30];
    [_menuBackgroundOutter addBottomConstraint:30];
    [_menuBackgroundOutter addLeadingConstraint:30];
    [_menuBackgroundOutter addTrailingConstraint:30];
    
    [_menuBackgroundOutter.layer setCornerRadius:30];
    [_menuBackgroundOutter.layer setBorderColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1].CGColor];
    [_menuBackgroundOutter.layer setBorderWidth:2];
    [_menuBackgroundOutter setBackgroundColor:[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1]];
}

- (void) setupMenuInner{
    _menuBackgroundInnner = [[UIView alloc]initWithFrame:CGRectZero];
    [_menuBackgroundInnner setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundOutter addSubview:_menuBackgroundInnner];
    
    [_menuBackgroundInnner addTopConstraint:50];
    [_menuBackgroundInnner addBottomConstraint:10];
    [_menuBackgroundInnner addLeadingConstraint:12];
    [_menuBackgroundInnner addTrailingConstraint:12];
    
    [_menuBackgroundInnner.layer setCornerRadius:30];
    [_menuBackgroundInnner.layer setBorderColor:[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1].CGColor];
    [_menuBackgroundInnner.layer setBorderWidth:2];
    [_menuBackgroundInnner setBackgroundColor:[UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1]];
}

- (void) setupTitle{
    _SettingsTitle = [[UILabel alloc] initWithFrame:CGRectZero];
    [_SettingsTitle setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundOutter addSubview:_SettingsTitle];
    
    [_SettingsTitle addWidthConstraint:200];
    [_SettingsTitle addHeightConstraint:50];
    [_SettingsTitle addCenterXConstraint];
    [_SettingsTitle addTopConstraint:2];
    
    [_SettingsTitle setText:@"Settings"];
    [_SettingsTitle setTextColor:[UIColor whiteColor]];
    [_SettingsTitle setAdjustsFontSizeToFitWidth:YES];
    [_SettingsTitle setFont:[UIFont boldSystemFontOfSize:30]];
    [_SettingsTitle setTextAlignment:NSTextAlignmentCenter];
}

- (void) setupButton{
    _exitButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_exitButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundOutter addSubview:_exitButton];
    
    [_exitButton addWidthConstraint:30];
    [_exitButton addHeightConstraint:30];
    [_exitButton addTopConstraint:10];
    [_exitButton addTrailingConstraint:10];

    
    [_exitButton setBackgroundImage:[UIImage imageNamed:@"CloseButton.png"] forState:UIControlStateNormal];
}

@end
