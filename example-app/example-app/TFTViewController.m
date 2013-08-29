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
    
    TapForTapBannerAd* bannerAd = [TapForTapBannerAd createAndShowAdWithFrame:CGRectMake(width / 2 - 320 / 2, 0, 320, 50) delegate:self];
    
    UIButton* showInterstitialButton = [[UIButton alloc] initWithFrame:CGRectMake(width / 2 - 200 / 2, 55, 200, 100)];
    [showInterstitialButton addTarget:self action:@selector(showInterstitial) forControlEvents:UIControlEventTouchUpInside];
    [showInterstitialButton setTitle:@"Show Interstitial" forState:UIControlStateNormal];
    self.interstitialAd = [TapForTapInterstitialAd createAndLoadWithDelegate:self];
    
    UIButton* showAppWallButton = [[UIButton alloc] initWithFrame:CGRectMake(width / 2 - 200 / 2, 155, 200, 100)];
    [showAppWallButton addTarget:self action:@selector(showAppWall) forControlEvents:UIControlEventTouchUpInside];
    [showAppWallButton setTitle:@"Show AppWall" forState:UIControlStateNormal];
    self.appWallAd = [TapForTapAppWallAd createAndLoadWithDelegate:self];
    

    [self.view addSubview:bannerAd];
    [self.view addSubview:showAppWallButton];
    [self.view addSubview:showInterstitialButton];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) showInterstitial {
    [self.interstitialAd showWithViewController:self];
}

- (void) showAppWall {
    [self.appWallAd showWithViewController:self];
}

- (void)tapForTapBannerAdDidReceiveAd:(TapForTapBannerAd *)bannerAd {
    NSLog(@"tapForTapBannerAdDidReceiveAd");
}

- (void)tapForTapBannerAd:(TapForTapBannerAd *)bannerAd didFail:(NSString *)reason {
    NSLog(@"tapForTapBannerAd:didFail");
    
}

- (void)tapForTapBannerAdWasTapped:(TapForTapBannerAd *)bannerAd {
    NSLog(@"tapForTapBannerAdWasTapped");
}


- (void)tapForTapInterstitialDidReceiveAd:(TapForTapInterstitialAd *)ad {
    NSLog(@"tapForTapInterstitialDidReceiveAd");
}

- (void)tapForTapInterstitial:(TapForTapInterstitialAd *)ad didFail:(NSString *)reason {
    NSLog(@"tapForTapInterstitial");
}

- (void)tapForTapInterstitialDidShow:(TapForTapInterstitialAd *)ad {
    NSLog(@"tapForTapInterstitialDidShow");
}

- (void)tapForTapInterstitialWasTapped:(TapForTapInterstitialAd *)ad {
    NSLog(@"tapForTapInterstitialWasTapped");
}

- (void)tapForTapInterstitialWasDismissed:(TapForTapInterstitialAd *)ad {
    NSLog(@"tapForTapInterstitialWasDismissed");
}


- (void)tapForTapAppWallDidReceiveAd:(TapForTapAppWallAd *)ad {
    NSLog(@"tapForTapAppWallDidReceiveAd");
}

- (void)tapForTapAppWall:(TapForTapAppWallAd *)ad didFail:(NSString *)reason {
    NSLog(@"tapForTapAppWall:didFail");
}

- (void)tapForTapAppWallDidShow:(TapForTapAppWallAd *)ad {
    NSLog(@"tapForTapAppWallDidShow");
}

- (void)tapForTapAppWallWasTapped:(TapForTapAppWallAd *)ad {
    NSLog(@"tapForTapAppWallWasTapped");
}

- (void)tapForTapAppWallWasDismissed:(TapForTapAppWallAd *)ad {
    NSLog(@"tapForTapAppWallWasDismissed");
}

@end
