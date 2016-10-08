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
    
    SettingsView *_SettingsView;
}
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    _SettingsView = [[SettingsView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _SettingsView.delegate = self;
    [self setView:_SettingsView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonTapped{
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
