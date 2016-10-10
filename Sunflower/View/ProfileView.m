//
//  ProfileView.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "ProfileView.h"
#import "UIView+Autolayout.h"

@interface ProfileView() {
    UIView *_menuBackgroundOutter;
    UIView *_menuBackgroundInnner;
    UILabel *_SettingsTitle;
    UILabel *_scoreLabel;
    UILabel *_totalKilledLabel;
    UILabel *_maxKilledLabel;
    UILabel *_timeSurvivedLabel;
    UILabel *_totalTimeSurvivedLabel;
    UIView *temp;
    int _score;
    int _totalKilled;
    int _maxKilled;
    double _timeSurvived;
    double _totalTimeSurvived;
}
@end

@interface ProfileView(Private)
-(void)setupSettingsView;
@end

@implementation ProfileView

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

@implementation ProfileView(Private)
- (void) setupSettingsView{
    [self setBackgroundColor:[UIColor clearColor]];
    [self setupBackground];
    [self setupMenuOutter];
    [self setupMenuInner];
    [self setupButton];
    [self setupTitle];
    [self setupStats];
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
    
    [_SettingsTitle setText:@"Profile"];
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

- (void) setupStats{
    _score = 0;
    _totalKilled = 0;
    _maxKilled = 0;
    _timeSurvived = 0;
    _totalTimeSurvived = 0;
    
    _scoreLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    _totalKilledLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    _maxKilledLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    _timeSurvivedLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    _totalTimeSurvivedLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    
    [_scoreLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundInnner addSubview:_scoreLabel];
    [_totalKilledLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundInnner addSubview:_totalKilledLabel];
    [_maxKilledLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundInnner addSubview:_maxKilledLabel];
    [_timeSurvivedLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundInnner addSubview:_timeSurvivedLabel];
    [_totalTimeSurvivedLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_menuBackgroundInnner addSubview:_totalTimeSurvivedLabel];
    
    [_scoreLabel addLeadingConstraint:10];
    [_scoreLabel addTrailingConstraint:10];
    [_scoreLabel addHeightConstraint:50];
    [_scoreLabel addTopConstraint:5];
    [_totalKilledLabel addLeadingConstraint:10];
    [_totalKilledLabel addHeightConstraint:50];
    [_totalKilledLabel addTrailingConstraint:10];
    [_totalKilledLabel addTopConstraint:55];
    [_maxKilledLabel addLeadingConstraint:10];
    [_maxKilledLabel addHeightConstraint:50];
    [_maxKilledLabel addTrailingConstraint:10];
    [_maxKilledLabel addTopConstraint:110];
    [_timeSurvivedLabel addLeadingConstraint:10];
    [_timeSurvivedLabel addHeightConstraint:50];
    [_timeSurvivedLabel addTrailingConstraint:10];
    [_timeSurvivedLabel addTopConstraint:165];
    [_totalTimeSurvivedLabel addLeadingConstraint:10];
    [_totalTimeSurvivedLabel addHeightConstraint:50];
    [_totalTimeSurvivedLabel addTrailingConstraint:10];
    [_totalTimeSurvivedLabel addTopConstraint:220];
    
    [_scoreLabel setText:[NSString stringWithFormat:@"HighScore: %i", _score] ];
    [_scoreLabel setTextColor:[UIColor blackColor]];
    [_scoreLabel setAdjustsFontSizeToFitWidth:YES];
    [_scoreLabel setFont:[UIFont systemFontOfSize:20]];
    [_scoreLabel setTextAlignment:NSTextAlignmentCenter];
    [_totalKilledLabel setText:[NSString stringWithFormat:@"Total Killed: %i", _totalKilled] ];
    [_totalKilledLabel setTextColor:[UIColor blackColor]];
    [_totalKilledLabel setAdjustsFontSizeToFitWidth:YES];
    [_totalKilledLabel setFont:[UIFont systemFontOfSize:20]];
    [_totalKilledLabel setTextAlignment:NSTextAlignmentCenter];
    [_maxKilledLabel setText:[NSString stringWithFormat:@"Max Killed: %i", _maxKilled] ];
    [_maxKilledLabel setTextColor:[UIColor blackColor]];
    [_maxKilledLabel setAdjustsFontSizeToFitWidth:YES];
    [_maxKilledLabel setFont:[UIFont systemFontOfSize:20]];
    [_maxKilledLabel setTextAlignment:NSTextAlignmentCenter];
    [_timeSurvivedLabel setText:[NSString stringWithFormat:@"Max Survival Time: %f", _timeSurvived] ];
    [_timeSurvivedLabel setTextColor:[UIColor blackColor]];
    [_timeSurvivedLabel setAdjustsFontSizeToFitWidth:YES];
    [_timeSurvivedLabel setFont:[UIFont systemFontOfSize:20]];
    [_timeSurvivedLabel setTextAlignment:NSTextAlignmentCenter];
    [_totalTimeSurvivedLabel setText:[NSString stringWithFormat:@"Total Surivial Time: %f", _totalTimeSurvived] ];
    [_totalTimeSurvivedLabel setTextColor:[UIColor blackColor]];
    [_totalTimeSurvivedLabel setAdjustsFontSizeToFitWidth:YES];
    [_totalTimeSurvivedLabel setFont:[UIFont systemFontOfSize:20]];
    [_totalTimeSurvivedLabel setTextAlignment:NSTextAlignmentCenter];
    
}

@end
