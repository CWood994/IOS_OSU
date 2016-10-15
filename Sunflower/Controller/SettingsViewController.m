//
//  SettingsViewController.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsView.h"
#import "CreditsViewController.h"

@interface SettingsViewController (){
    SettingsView *_settingsView;
    CreditsViewController *_creditsViewController;
}
@end

@implementation SettingsViewController


- (void)viewDidLoad {
    NSLog(@"\n**** viewDidLoad: %@ ****\n",self.class);

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    NSLog(@"\n**** loadView: %@ ****\n",self.class);

    _settingsView = [[SettingsView alloc] initWithFrame:CGRectZero];
    [_settingsView.exitButton addTarget:self action:@selector(dismissView) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.exitButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.exitButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.exitButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.creditsButton addTarget:self action:@selector(creditsButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.creditsButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.creditsButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.creditsButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.tbdButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.tbdButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.tbdButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.gameSettingsButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.gameSettingsButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.gameSettingsButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.signOutButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.signOutButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.signOutButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.quitButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.quitButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.quitButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    [_settingsView.muteButton addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchDown];
    [_settingsView.muteButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpInside];
    [_settingsView.muteButton addTarget:self action:@selector(buttonRelease:) forControlEvents:UIControlEventTouchUpOutside];
    
    
    UILongPressGestureRecognizer *singleFingerTap =
    [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                  action:@selector(dismissView)];
    singleFingerTap.minimumPressDuration=0;
    [_settingsView.background addGestureRecognizer:singleFingerTap];
    
    [self setView:_settingsView];
}

- (void)didReceiveMemoryWarning {
    NSLog(@"\n**** didReceiveMemoryWarning: %@ ****\n",self.class);
    
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear{
    NSLog(@"\n**** viewWillAppear: %@ ****\n",self.class);
    
}

-(void)viewDidAppear{
    NSLog(@"\n**** viewDidAppear: %@ ****\n",self.class);
    
    
}

-(void)viewWillDisappear{
    NSLog(@"\n**** viewWillDisappear: %@ ****\n",self.class);
    
}

-(void)viewDidDisappear{
    NSLog(@"\n**** viewDidDisappear: %@ ****\n",self.class);
    
    
}

-(void)viewDidLayoutSubviews{
    NSLog(@"\n**** viewDidLayoutSubviews: %@ ****\n",self.class);
    
    
}


- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator {
    
    // best call super just in case
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    // will execute before rotation
    
    [coordinator animateAlongsideTransition:^(id  _Nonnull context) {
        
        //This is due to modal VC not being able to resize on rotate
        [self dismissViewControllerAnimated:NO completion:nil];

       
    } completion:^(id  _Nonnull context) {
        
    }];
}

- (void) buttonPress:(UIButton*)button {
    [UIView animateWithDuration:.2 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        button.transform = CGAffineTransformMakeScale(.9,.9);
    } completion:^(BOOL finished) {
        
    }];
}

- (void) buttonRelease:(UIButton*)button {
    [UIView animateWithDuration:.2 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        button.transform = CGAffineTransformMakeScale(1.05,1.05);
    } completion:^(BOOL finished) {
    }];
    [UIView animateWithDuration:.2 delay:0.2 options:UIViewAnimationOptionCurveEaseOut animations:^{
        button.transform = CGAffineTransformMakeScale(1.0,1.0);
    } completion:^(BOOL finished) {
    }];
}


- (void) dismissView{
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(void)creditsButtonTapped{
    _creditsViewController = [[CreditsViewController alloc]init];
    _creditsViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController: _creditsViewController animated:YES completion: nil];
}

- (void)darkenBackground{
    [ _settingsView.background setBackgroundColor: [UIColor colorWithRed:0.15 green:0.15 blue:0.15 alpha:0.8]];
    
}
@end
