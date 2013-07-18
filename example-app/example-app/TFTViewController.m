//
//  TFTViewController.m
//  example-app
//
//  Created by Phil Laird on 2013-07-18.
//  Copyright (c) 2013 Tap for Tap. All rights reserved.
//

#import "TFTViewController.h"
#import "TapForTap.h"

@implementation TFTViewController

- (void)viewDidLoad
{
    int width = self.view.frame.size.width;
    
    TapForTapAdView* adView = [[TapForTapAdView alloc] initWithFrame:CGRectMake(width / 2 - 320 / 2, 0, 320, 50) delegate:self];
    
    UIButton* showInterstitialButton = [[UIButton alloc] initWithFrame:CGRectMake(width / 2 - 200 / 2, 55, 200, 100)];
    [showInterstitialButton addTarget:self action:@selector(showInterstitial) forControlEvents:UIControlEventTouchUpInside];
    [showInterstitialButton setTitle:@"Show Interstitial" forState:UIControlStateNormal];
    [TapForTapInterstitial prepareWithDelegate:self];
    
    UIButton* showAppWallButton = [[UIButton alloc] initWithFrame:CGRectMake(width / 2 - 200 / 2, 155, 200, 100)];
    [showAppWallButton addTarget:self action:@selector(showAppWall) forControlEvents:UIControlEventTouchUpInside];
    [showAppWallButton setTitle:@"Show AppWall" forState:UIControlStateNormal];
    [TapForTapAppWall prepareWithDelegate:self];
    

    [self.view addSubview:adView];
    [self.view addSubview:showAppWallButton];
    [self.view addSubview:showInterstitialButton];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) showInterstitial {
    [TapForTapInterstitial showWithRootViewController:self];
}

- (void) showAppWall {
    [TapForTapAppWall showWithRootViewController:self];
}

- (void) tapForTapAdViewDidReceiveAd: (TapForTapAdView *)adView {
    NSLog(@"AdView didReceiveAd");
}
- (void) tapForTapAdView: (TapForTapAdView *)adView didFailToReceiveAd: (NSString *)reason {
    NSLog(@"AdView didFailToReceiveAd: %@", reason);
    
}
- (void) tapForTapAdViewWasTapped: (TapForTapAdView *)adView {
    NSLog(@"AdView wasTapped");
    
}

- (void) tapForTapInterstitialDidReceiveAd {
    NSLog(@"Interstitial didReceiveAd");
    
}
- (void) tapForTapInterstitialDidShow {
    NSLog(@"Interstitial didShow");
    
}
- (void) tapForTapInterstitialWasDismissed {
    NSLog(@"Interstitial wasDismissed");
    
}
- (void) tapForTapInterstitialFailedToDownload: (NSString *) reason {
    NSLog(@"Interstitial didFailToDownload: %@", reason);
    
}

- (void) tapForTapAppWallDidReceiveAd {
    NSLog(@"AppWall didReiceAd");
    
}
- (void) tapForTapAppWallDidShow {
    NSLog(@"AppWall didShow");
    
}
- (void) tapForTapAppWallWasDismissed {
    NSLog(@"AppWall wasDismissed");
    
}
- (void) tapForTapAppWallFailedToDownload: (NSString *) reason {
    NSLog(@"AppWall didFailToDownload: %@", reason);
    
}

@end
