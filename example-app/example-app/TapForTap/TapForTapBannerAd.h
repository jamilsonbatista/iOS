//
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TapForTapBannerAd;

@protocol TapForTapBannerAdDelegate <NSObject>
@optional
- (void)tapForTapBannerAdDidReceiveAd:(TapForTapBannerAd *)bannerAd;
- (void)tapForTapBannerAd:(TapForTapBannerAd *)bannerAd didFail:(NSString *)reason;
- (void)tapForTapBannerAdWasTapped:(TapForTapBannerAd *)bannerAd;
@end

@interface TapForTapBannerAd : UIView
@property (nonatomic, weak) id<TapForTapBannerAdDelegate> delegate;
@property (nonatomic, assign) BOOL preLoad;
@property (nonatomic, assign) BOOL autoRollover;

+ (TapForTapBannerAd *)createAndShowAdWithFrame:(CGRect)frame delegate:(id<TapForTapBannerAdDelegate>)delegate;
+ (TapForTapBannerAd *)createAndShowAdWithFrame:(CGRect)frame;

- (id)initWithFrame:(CGRect)frame delegate:(id<TapForTapBannerAdDelegate>)delegate;
- (void)startShowingAds;
- (void)stopShowingAds;
@end
