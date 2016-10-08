//
//  SettingsViewController.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsView.h"

@interface SettingsViewController ()<SettingsViewDelegate>{
    
    SettingsView *_settingsView;
}
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    _settingsView = [[SettingsView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _settingsView.delegate = self;
    [self setView:_settingsView];
}

- (void) viewDidLayoutSubviews {
    //TODO: implement here:
    // what happens when view
    // call a method on the view like [_settingsView updateView]
    // in SettingsView, create a method called updateView
    // updateView is responsible for redrawing the view based on orientation or whatever.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonTapped{
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
