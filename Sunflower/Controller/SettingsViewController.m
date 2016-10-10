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
    [_settingsView.exitButton addTarget:self action:@selector(dismissViewController) forControlEvents:UIControlEventTouchUpInside];
    UILongPressGestureRecognizer *singleFingerTap =
    [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                  action:@selector(dismissViewController)];
    singleFingerTap.minimumPressDuration=0;
    [_settingsView.background addGestureRecognizer:singleFingerTap];
    [_settingsView.creditsButton addTarget:self action:@selector(creditsButtonTapped) forControlEvents:UIControlEventTouchUpInside];

    
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

- (void) dismissViewController{
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(void)creditsButtonTapped{
    _creditsViewController = [[CreditsViewController alloc]init];
    [self presentViewController: _creditsViewController animated:YES completion: nil];
}
@end
