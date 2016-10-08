//
//  SettingsView.h
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SettingsViewDelegate
@required
- (void)buttonTapped;
@end

@interface SettingsView : UIView
@property (weak) id <SettingsViewDelegate> delegate;
@end
