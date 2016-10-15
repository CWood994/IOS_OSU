//
//  LoginViewController.m
//  Sunflower
//
//  Created by Connor Wood on 10/14/16.
//  Copyright © 2016 OSU. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"
#import "MenuViewController.h"

@interface LoginViewController (){
    LoginView *_loginView;
    MenuViewController *_MenuViewController;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    NSLog(@"\n**** viewDidLoad: %@ ****\n",self.class);
    
    [super viewDidLoad];
}

- (void)loadView{
    NSLog(@"\n**** loadView: %@ ****\n",self.class);
    _loginView = [[LoginView alloc] initWithFrame:CGRectZero];
    [_loginView.loginButton addTarget:self action:@selector(loginButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [self setView:_loginView];
}

- (void)didReceiveMemoryWarning {
    NSLog(@"\n**** didReceiveMemoryWarning: %@ ****\n",self.class);
    
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"\n**** viewWillAppear: %@ ****\n",self.class);
    
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"\n**** viewDidAppear: %@ ****\n",self.class);
    
    
}

-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"\n**** viewWillDisappear: %@ ****\n",self.class);
    
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"\n**** viewDidDisappear: %@ ****\n",self.class);
    
    
}

-(void)viewDidLayoutSubviews{
    NSLog(@"\n**** viewDidLayoutSubviews: %@ ****\n",self.class);
    
    
}

- (void) loginButtonTapped{
    _MenuViewController = [[MenuViewController alloc] init];
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionReveal; 
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    
    [self.navigationController pushViewController:_MenuViewController animated:NO];
}



@end
