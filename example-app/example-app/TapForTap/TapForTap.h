//
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#import "TapForTapBannerAd.h"
#import "TapForTapAppWallAd.h"
#import "TapForTapInterstitialAd.h"

@class TapForTap;

typedef enum {
    NONE = -1,
    MALE = 0,
    FEMALE = 1
} TapForTapGender;

typedef void (^TFTInitializationRequestHandler)(BOOL success, NSDictionary *reason);

@interface TapForTap : NSObject
+ (void)initializeWithAPIKey:(NSString *)apiKey;
+ (void)initializeWithAPIKey:(NSString *)apiKey completion:(TFTInitializationRequestHandler)handler;
+ (void)setYearOfBirth:(NSUInteger)yearOfBirth;
+ (void)setGender:(TapForTapGender)gender;
+ (void)setLocation:(CLLocation *)location;
+ (void)setUserAccountId:(NSString *)userAccountId;
+ (void)enableTestMode;
+ (void)disableTestMode;
+ (BOOL) testMode;
+ (void)enableTapForTap;
+ (void)disableTapForTap;
+ (BOOL)enabled;

@end
