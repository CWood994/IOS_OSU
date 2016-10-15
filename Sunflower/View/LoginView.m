//
//  LoginView.m
//  Sunflower
//
//  Created by Connor Wood on 10/14/16.
//  Copyright © 2016 OSU. All rights reserved.
//

#import "LoginView.h"
#import "UIView+Autolayout.h"

@interface LoginView() {
}
@end


@interface LoginView(Private)
-(void)setupLoginView;
@end


@implementation LoginView

@synthesize loginButton = _loginButton;

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupLoginView];
    }
    return self;
}

@end

@implementation LoginView(Private)
-(void)setupLoginView{
    [self setupLoginButton];
    
    [self setBackgroundColor:[UIColor greenColor]];
}

- (void) setupLoginButton{
    _loginButton = [[UIButton alloc]initWithFrame:CGRectZero];
    [_loginButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:_loginButton];
    
    [_loginButton addWidthConstraint:200];
    [_loginButton addHeightConstraint:140];
    [_loginButton addCenterXConstraint];
    [_loginButton addCenterYConstraint];
    
    [_loginButton setBackgroundColor:[UIColor blueColor]];
    [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

@end
