//
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TapForTapInterstitialAd;

@protocol TapForTapInterstitialAdDelegate <NSObject>
@optional
- (void)tapForTapInterstitialDidReceiveAd:(TapForTapInterstitialAd *)ad;
- (void)tapForTapInterstitial:(TapForTapInterstitialAd *)ad didFail:(NSString *)reason;
- (void)tapForTapInterstitialDidShow:(TapForTapInterstitialAd *)ad;
- (void)tapForTapInterstitialWasTapped:(TapForTapInterstitialAd *)ad;
- (void)tapForTapInterstitialWasDismissed:(TapForTapInterstitialAd *)ad;
@end

@interface TapForTapInterstitialAd : NSObject
+ (TapForTapInterstitialAd *)createAndLoad;
+ (TapForTapInterstitialAd *)createAndLoadWithDelegate:(id<TapForTapInterstitialAdDelegate>) delegate;

- (void)load;
- (void)showWithViewController:(UIViewController *)viewController;
- (BOOL) readyToShow;
@end
