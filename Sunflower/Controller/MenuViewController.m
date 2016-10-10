//
//  MenuViewController.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuView.h"
#import "SettingsViewController.h"
#import "ProfileViewController.h"

@interface MenuViewController (){
    MenuView *_MenuView;
    SettingsViewController *_SettingsViewController;
    ProfileViewController *_ProfileViewController;
}
@end

@implementation MenuViewController

- (void)viewDidLoad {
    NSLog(@"\n**** viewDidLoad: %@ ****\n",self.class);
    
    [super viewDidLoad];
}

- (void)loadView{
    NSLog(@"\n**** loadView: %@ ****\n",self.class);
    
    _MenuView = [[MenuView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [_MenuView.playButton addTarget:self action:@selector(playButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_MenuView.settingsButton addTarget:self action:@selector(settingsButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_MenuView.profileButton addTarget:self action:@selector(profileButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [self setView:_MenuView];
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

- (void) settingsButtonTapped{
    _SettingsViewController = [[SettingsViewController alloc] init];
    
    self.definesPresentationContext = YES; 
    _SettingsViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:_SettingsViewController animated:NO completion:nil];
}

- (void) profileButtonTapped{
    _ProfileViewController = [[ProfileViewController alloc] init];
    
    self.definesPresentationContext = YES;
    _ProfileViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:_ProfileViewController animated:NO completion:nil];
}

- (void) playButtonTapped{
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    
    [coordinator animateAlongsideTransition:^(id  _Nonnull context) {
        
        [self loadView];
        
        //This is due to modal VC not being able to resize on rotate (close and relaunch)
        if(self.presentedViewController.class == SettingsViewController.class){
            [self settingsButtonTapped];
        }
        if(self.presentedViewController.class == ProfileViewController.class){
            [self profileButtonTapped];
        }
        
    } completion:^(id  _Nonnull context) {
        
    }];
}
@end
