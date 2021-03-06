//
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#import "TFTBanner.h"
#import "TFTInterstitial.h"

@class TFTTapForTap;

typedef enum {
    NONE = -1,
    MALE = 0,
    FEMALE = 1
} TFTGender;

typedef void (^TFTInitializationRequestHandler)(BOOL success, NSDictionary *reason);

@interface TFTTapForTap : NSObject
+ (void)initializeWithAPIKey:(NSString *)apiKey;
+ (void)initializeWithAPIKey:(NSString *)apiKey completion:(TFTInitializationRequestHandler)handler;
+ (void)initializeWithAPIKey:(NSString *)apiKey andPlugins:(Class)plugins, ... NS_REQUIRES_NIL_TERMINATION;
+ (void)initializeWithAPIKey:(NSString *)apiKey andPluginArray:(NSMutableArray *)pluginsArray;
+ (void)setYearOfBirth:(NSUInteger)yearOfBirth;
+ (void)setGender:(TFTGender)gender;
+ (void)setLocation:(CLLocation *)location;
+ (void)setUserAccountId:(NSString *)userAccountId;
+ (void)enableTestMode;
+ (void)disableTestMode;
+ (BOOL)testMode;
+ (void)enableTapForTap;
+ (void)disableTapForTap;
+ (BOOL)enabled;
+ (NSMutableArray *) getPlugins;
+ (NSMutableArray *) getAdProviders;
+ (NSString *)version;
+ (NSString *)apiKey;
+ (NSString *)plugin;
+ (NSString *)pluginVersion;

@end
