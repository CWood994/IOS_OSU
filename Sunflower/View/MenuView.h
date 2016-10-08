//
//  MenuView.h
//  sunflower
//
//  Created by Connor Wood on 10/1/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MenuViewDelegate
@required
- (void)buttonTapped;
@end

@interface MenuView : UIView
@property (weak) id <MenuViewDelegate> delegate;
@end
