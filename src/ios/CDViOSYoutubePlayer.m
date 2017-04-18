#import "CDViOSYoutubePlayer.h"

@implementation CDViOSYoutubePlayer

- (void)openiOSVideo:(CDVInvokedUrlCommand*)command
{
    if ( self.playerView == nil ) {
        self.playerView = [[YTPlayerView alloc]init];
        self.playerView.delegate = self;
    }

    CDVPluginResult* pluginResult = nil;
    NSString* videoID = [command.arguments objectAtIndex:0];
    if (videoID != nil) {
        NSDictionary *playerVars = @{
                                 @"origin" : @"http://www.youtube.com",
                                 };
        [self.playerView loadWithVideoId:videoID playerVars:playerVars];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Missing videoID Argument"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

- (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state {
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
}
- (void)playerViewDidBecomeReady:(YTPlayerView *)playerView {
    [self.playerView playVideo];
}

@end
