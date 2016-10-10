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
    UIButton *_levelButton;
    UIButton *_coinButton;
    UIView *_userDataView;
    UILabel *_userNameLabel;
    UILabel *_coinAmountLabel;
}
@end

@interface MenuView(Private)
-(void)setupMenuView;
@end

@implementation MenuView

@synthesize playButton=_playButton;
@synthesize settingsButton=_settingsButton;
@synthesize profileButton=_profileButton;

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
}

-(void) setupUserDataView{
    _userDataView = [[UIView alloc]initWithFrame:CGRectZero];
    [_userDataView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_userDataView];
    
    [_userDataView addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_userDataView addHeightConstraint:40];
    [_userDataView addCenterXConstraint];
    [_userDataView addTopConstraint:15];
    
    [_userDataView setBackgroundColor:[UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.9]];
    [_userDataView.layer setCornerRadius:3.0f];
}

-(void) setupUserName{
    _userNameLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [_userNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userDataView addSubview:_userNameLabel];
    
    [_userNameLabel addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_userNameLabel addHeightConstraint:20];
    [_userNameLabel addCenterXConstraint];
    [_userNameLabel addTopConstraint:0];
    
    [_userNameLabel setText:@"[undefined]"];
    [_userNameLabel setTextColor:[UIColor whiteColor]];
    [_userNameLabel setAdjustsFontSizeToFitWidth:YES];
    [_userNameLabel setTextAlignment:NSTextAlignmentCenter];
}

-(void) setupCoins {
    _coinButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_coinButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userDataView addSubview:_coinButton];
    
    [_coinButton addWidthConstraint:20];
    [_coinButton addHeightConstraint:20];
    [_coinButton addTrailingConstraint:10];
    [_coinButton addBottomConstraint:2];
    
    [_coinButton setBackgroundImage:[UIImage imageNamed:@"CoinIcon.png"] forState:UIControlStateNormal];
    
    _coinAmountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [_coinAmountLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_userDataView addSubview:_coinAmountLabel];
    
    [_coinAmountLabel addTrailingConstraint:32];
    [_coinAmountLabel addHeightConstraint:20];
    [_coinAmountLabel addLeadingConstraint:0];
    [_coinAmountLabel addBottomConstraint:0];
    
    [_coinAmountLabel setText:@"999,999"];
    [_coinAmountLabel setTextColor:[UIColor whiteColor]];
    [_coinAmountLabel setAdjustsFontSizeToFitWidth:YES];
    [_coinAmountLabel setTextAlignment:NSTextAlignmentRight];
}

@end
