//
//  TFTViewController.h
//  example-app
//
//  Created by Phil Laird on 2013-07-18.
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapForTap.h"

@interface TFTViewController : UIViewController <TapForTapBannerAdDelegate, TapForTapInterstitialAdDelegate, TapForTapAppWallAdDelegate>
@property (retain, nonatomic) TapForTapInterstitialAd *interstitialAd;
@property (retain, nonatomic) TapForTapAppWallAd *appWallAd;
@end
