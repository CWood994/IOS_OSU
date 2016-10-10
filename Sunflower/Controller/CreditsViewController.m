//
//  CreditsViewController.m
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import "CreditsViewController.h"
#import "CreditsView.h"

@interface CreditsViewController (){
    CreditsView *_creditsView;
}
@end

@implementation CreditsViewController

- (void)viewDidLoad {
    NSLog(@"\n**** viewDidLoad: %@ ****\n",self.class);
    
    [super viewDidLoad];
}

- (void)loadView{
    NSLog(@"\n**** loadView: %@ ****\n",self.class);
    
    _creditsView = [[CreditsView alloc] initWithFrame:CGRectZero];
    [_creditsView.dismissButton addTarget:self action:@selector(dismissButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    [self setView:_creditsView];
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

-(void) dismissButtonTapped{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
