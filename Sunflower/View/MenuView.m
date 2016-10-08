//
//  MenuView.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "MenuView.h"
#import "UIView+Autolayout.h"
#import "SunflowerCommon.h"

@interface MenuView() {
    //TODO: these are HORRIBLY named!!!
    // if something is a View, this is how to name: _userDataView (notice the suffix View)
    // if something is a label, this is how to name: _coinAmountLabel (notice the suffix Label)
    UIButton *_playButton;
    UIButton *_settingsButton;
    UIButton *_profileButton;
    UIButton *_levelButton;
    UIButton *_coinButton;
    UIView *_userData;
    UILabel *_userName;
    UILabel *_coinAmount;
}
@end

@interface MenuView(Private)
-(void)setupMenuView;
@end

@implementation MenuView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMenuView];
    }
    return self;
}
@end

@implementation MenuView(Private)
- (void) setupMenuView{
    [self setBackgroundColor: [UIColor colorWithPatternImage:[UIImage imageNamed:@"test.jpg"]]];
    [self setupPlayButton];
    [self setupProfileButton];
    [self setupSettingsButton];
    [self setupUserDataView];
    [self setupUserName];
    [self setupCoins];
}

- (void) setupPlayButton{
    _playButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_playButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_playButton];
    
    [_playButton addWidthConstraint:150];
    [_playButton addHeightConstraint:70];
    [_playButton addCenterXConstraint];
    [_playButton addBottomConstraint:PLAY_BUTTON_BOTTOM_HEIGHT];
    
    [_playButton setBackgroundImage:[UIImage imageNamed:@"PlayButton.png"] forState:UIControlStateNormal];
    [_playButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) setupSettingsButton{
    _settingsButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_settingsButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_settingsButton];
    
    [_settingsButton addWidthConstraint:40];
    [_settingsButton addHeightConstraint:40];
    [_settingsButton addTrailingConstraint:MAIN_MENU_SMALL_BUTTONS_LEADING_SPACE];
    [_settingsButton addTopConstraint:15];
    
    [_settingsButton setBackgroundImage:[UIImage imageNamed:@"SettingsButton.png"] forState:UIControlStateNormal];
    [_settingsButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void) setupProfileButton{
    _profileButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_profileButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_profileButton];
    
    [_profileButton addWidthConstraint:40];
    [_profileButton addHeightConstraint:40];
    [_profileButton addLeadingConstraint:MAIN_MENU_SMALL_BUTTONS_LEADING_SPACE];
    [_profileButton addTopConstraint:15];
    
    [_profileButton setBackgroundImage:[UIImage imageNamed:@"UserButton.png"] forState:UIControlStateNormal];
    [_profileButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void) setupUserDataView{
    _userData = [[UIView alloc]initWithFrame:CGRectZero];
    [_userData setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_userData];
    
    [_userData addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_userData addHeightConstraint:40];
    [_userData addCenterXConstraint];
    [_userData addTopConstraint:15];
    
    [_userData setBackgroundColor:[UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.9]];
    [_userData.layer setCornerRadius:3.0f];
    
}

-(void) setupUserName{
    _userName = [[UILabel alloc]initWithFrame:CGRectZero];
    [_userName setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userData addSubview:_userName];
    
    [_userName addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_userName addHeightConstraint:20];
    [_userName addCenterXConstraint];
    [_userName addTopConstraint:0];
    
    [_userName setText:@"[undefined]"];
    [_userName setTextColor:[UIColor whiteColor]];
    [_userName setAdjustsFontSizeToFitWidth:YES];
    [_userName setTextAlignment:NSTextAlignmentCenter];
}

-(void) setupCoins {
    _coinButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_coinButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userData addSubview:_coinButton];
    
    [_coinButton addWidthConstraint:20];
    [_coinButton addHeightConstraint:20];
    [_coinButton addTrailingConstraint:10];
    [_coinButton addBottomConstraint:2];
    
    [_coinButton setBackgroundImage:[UIImage imageNamed:@"CoinIcon.png"] forState:UIControlStateNormal];
    
    _coinAmount = [[UILabel alloc] initWithFrame:CGRectZero];
    [_coinAmount setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userData addSubview:_coinAmount];
    
    [_coinAmount addTrailingConstraint:32];
    [_coinAmount addHeightConstraint:20];
    [_coinAmount addLeadingConstraint:0];
    [_coinAmount addBottomConstraint:0];
    
    [_coinAmount setText:@"999,999"];
    [_coinAmount setTextColor:[UIColor whiteColor]];
    [_coinAmount setAdjustsFontSizeToFitWidth:YES];
    [_coinAmount setTextAlignment:NSTextAlignmentRight];
}

- (void)buttonTapped {
    //[_button setBackgroundColor:[UIColor yellowColor]];
    [self.delegate buttonTapped];
}
@end
