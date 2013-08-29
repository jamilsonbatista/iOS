//
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TapForTapAppWallAd;

@protocol TapForTapAppWallAdDelegate <NSObject>
@optional
- (void)tapForTapAppWallDidReceiveAd:(TapForTapAppWallAd *)ad;
- (void)tapForTapAppWall:(TapForTapAppWallAd *)ad didFail:(NSString *)reason;
- (void)tapForTapAppWallDidShow:(TapForTapAppWallAd *)ad;
- (void)tapForTapAppWallWasTapped:(TapForTapAppWallAd *)ad;
- (void)tapForTapAppWallWasDismissed:(TapForTapAppWallAd *)ad;
@end

@interface TapForTapAppWallAd : NSObject
- (void)load;
- (void)showWithViewController:(UIViewController *)viewController;
- (BOOL) readyToShow;

+ (TapForTapAppWallAd *) createAndLoad;
+ (TapForTapAppWallAd *) createAndLoadWithDelegate:(id<TapForTapAppWallAdDelegate>) delegate;
@end
