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

@interface MenuView()
{
    UIButton *_PlayButton;
    UIButton *_SettingsButton;
    UIButton *_ProfileButton;
    UIButton *_LevelButton;
    UIButton *_CoinButton;
    UIView *_UserData;
    UILabel *_UserName;
    UILabel *_CoinAmount;
}
@end

@interface MenuView(Private)
-(void)setupView;
@end

@implementation MenuView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

@end

@implementation MenuView(Private)
- (void) setupView{
    [self setBackgroundColor: [UIColor colorWithPatternImage:[UIImage imageNamed:@"test.jpg"]]];
    [self setupPlayButton];
    [self setupProfileButton];
    [self setupSettingsButton];
    [self setupUserDataView];
    [self setupUserName];
    [self setupCoins];
}

- (void) setupPlayButton{
    _PlayButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_PlayButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_PlayButton];
    
    [_PlayButton addWidthConstraint:150];
    [_PlayButton addHeightConstraint:70];
    [_PlayButton addCenterXConstraint];
    [_PlayButton addBottomConstraint:PLAY_BUTTON_BOTTOM_HEIGHT];
    
    [_PlayButton setBackgroundImage:[UIImage imageNamed:@"PlayButton.png"] forState:UIControlStateNormal];
    [_PlayButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) setupSettingsButton{
    _SettingsButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_SettingsButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_SettingsButton];
    
    [_SettingsButton addWidthConstraint:40];
    [_SettingsButton addHeightConstraint:40];
    [_SettingsButton addTrailingConstraint:MAIN_MENU_SMALL_BUTTONS_LEADING_SPACE];
    [_SettingsButton addTopConstraint:15];
    
    [_SettingsButton setBackgroundImage:[UIImage imageNamed:@"SettingsButton.png"] forState:UIControlStateNormal];
    [_SettingsButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void) setupProfileButton{
    _ProfileButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_ProfileButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_ProfileButton];
    
    [_ProfileButton addWidthConstraint:40];
    [_ProfileButton addHeightConstraint:40];
    [_ProfileButton addLeadingConstraint:MAIN_MENU_SMALL_BUTTONS_LEADING_SPACE];
    [_ProfileButton addTopConstraint:15];
    
    [_ProfileButton setBackgroundImage:[UIImage imageNamed:@"UserButton.png"] forState:UIControlStateNormal];
    [_ProfileButton addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void) setupUserDataView{
    _UserData = [[UIView alloc]initWithFrame:CGRectZero];
    [_UserData setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_UserData];
    
    [_UserData addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_UserData addHeightConstraint:40];
    [_UserData addCenterXConstraint];
    [_UserData addTopConstraint:15];
    
    [_UserData setBackgroundColor:[UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.9]];
    [_UserData.layer setCornerRadius:3.0f];
    
}

-(void) setupUserName{
    _UserName = [[UILabel alloc]initWithFrame:CGRectZero];
    [_UserName setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_UserData addSubview:_UserName];
    
    [_UserName addWidthConstraint:USER_DATA_BAR_WIDTH];
    [_UserName addHeightConstraint:20];
    [_UserName addCenterXConstraint];
    [_UserName addTopConstraint:0];
    
    [_UserName setText:@"[undefined]"];
    [_UserName setTextColor:[UIColor whiteColor]];
    [_UserName setAdjustsFontSizeToFitWidth:YES];
    [_UserName setTextAlignment:NSTextAlignmentCenter];
}

-(void) setupCoins{
    _CoinButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_CoinButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_UserData addSubview:_CoinButton];
    
    [_CoinButton addWidthConstraint:20];
    [_CoinButton addHeightConstraint:20];
    [_CoinButton addTrailingConstraint:10];
    [_CoinButton addBottomConstraint:2];
    
    [_CoinButton setBackgroundImage:[UIImage imageNamed:@"CoinIcon.png"] forState:UIControlStateNormal];
    
    _CoinAmount = [[UILabel alloc] initWithFrame:CGRectZero];
    [_CoinAmount setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_UserData addSubview:_CoinAmount];
    
    [_CoinAmount addTrailingConstraint:32];
    [_CoinAmount addHeightConstraint:20];
    [_CoinAmount addLeadingConstraint:0];
    [_CoinAmount addBottomConstraint:0];
    
    [_CoinAmount setText:@"999,999"];
    [_CoinAmount setTextColor:[UIColor whiteColor]];
    [_CoinAmount setAdjustsFontSizeToFitWidth:YES];
    [_CoinAmount setTextAlignment:NSTextAlignmentRight];
}

- (void)buttonTapped
{
    //[_button setBackgroundColor:[UIColor yellowColor]];
    [self.delegate buttonTapped];
}


@end
