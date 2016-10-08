//
//  SunflowerCommon.h
//  Sunflower
//
//  Created by Connor Wood on 10/7/16.
//  Copyright © 2016 Connor Wood. All rights reserved.
//

#define PLAY_BUTTON_BOTTOM_HEIGHT (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)) ?  20 :  80
#define MAIN_MENU_SMALL_BUTTONS_LEADING_SPACE (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)) ?  50 :  20
#define USER_DATA_BAR_WIDTH (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)) ?  ([[UIScreen mainScreen] bounds].size.width - 190) :  ([[UIScreen mainScreen] bounds].size.width - 130)



