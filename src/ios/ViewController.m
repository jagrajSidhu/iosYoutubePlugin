//
//  ViewController.m
//  Testing
//
//  Created by Jagraj Singh on 2017-04-16.
//  Copyright © 2017 Jagraj Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype) init
{
	return [self initWithVideoIdentifier:nil];
}

- (instancetype) initWithVideoIdentifier:(NSString *)videoIdentifier
{
    self.playerView.delegate = self;
    NSDictionary *playerVars = @{
                                 @"origin" : @"http://www.youtube.com",
                                 };
    [self.playerView loadWithVideoId:@"VLMF5GM0Kt8" playerVars:playerVars];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // [self.playerView loadWithVideoId:@"VLMF5GM0Kt8"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state {
     NSLog(@" - - - - - - -JAGRAJ 1 -------------");
    switch (state) {
        case kYTPlayerStatePlaying:
            NSLog(@" - - - - - - -Started playback");
            break;
        case kYTPlayerStatePaused:
            NSLog(@" - - - - - - - -Paused playback");
            break;
        case kYTPlayerStateUnstarted:
            NSLog(@" - - - - - - - -kYTPlayerStateUnstarted playback");
            break;
        case kYTPlayerStateEnded:
            NSLog(@" - - - - - - - -kYTPlayerStateEnded playback");
            break;
        case kYTPlayerStateBuffering:
            NSLog(@" - - - - - - - -kYTPlayerStateBuffering playback");
            break;
        case kYTPlayerStateQueued:
            NSLog(@" - - - - - - - -kYTPlayerStateQueued playback");
            break;
        case kYTPlayerStateUnknown:
            NSLog(@" - - - - - - - -kYTPlayerStateUnknown playback");
            break;
        default:
             NSLog(@" - - - - - - - -default playback");
            break;
    }
}
- (void)playerView:(YTPlayerView *)playerView receivedError:(YTPlayerError)error {

    NSLog(@"-----------JAGRAJ 2- - - - - - - - -  - -");

}
- (void)playerViewDidBecomeReady:(YTPlayerView *)playerView {
    NSLog(@"-----------JAGRAJ 3- - - - - - - - -  - -");
}


@end
