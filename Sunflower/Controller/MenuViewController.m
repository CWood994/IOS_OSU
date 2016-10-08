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

@interface MenuViewController ()<MenuViewDelegate>{
    MenuView *_menuView;
    //TODO: wtf is this? _vc???? 
    SettingsViewController *_vc;
}
@end

@implementation MenuViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    _menuView = [[MenuView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _menuView.delegate = self;
    [self setView:_menuView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear{
    
}

-(void)viewDidAppear{
    
}

-(void)viewWillDisappear{
    
}

-(void)viewDidDisappear{
    
}

- (void) buttonTapped{
    _vc = [[SettingsViewController alloc] init];
    
    self.definesPresentationContext = YES; //self is presenting view controller
    _vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:_vc animated:NO completion:nil];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator {
    
    // best call super just in case
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    // will execute before rotation
    
    [coordinator animateAlongsideTransition:^(id  _Nonnull context) {
        
       // [self loadView];
        
    } completion:^(id  _Nonnull context) {
        
        
    }];
}
@end
