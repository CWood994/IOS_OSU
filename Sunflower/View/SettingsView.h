//
//  SettingsView.h
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
//TODO: This Protocol is not necessary. Better way to do this.
// you can just expose the button, and just set the target that way
@protocol SettingsViewDelegate
@required
- (void)buttonTapped;
@end

@interface SettingsView : UIView
@property (weak) id <SettingsViewDelegate> delegate;
- (void) updateView;
@end
