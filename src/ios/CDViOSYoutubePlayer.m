#import "CDViOSYoutubePlayer.h"

@implementation CDViOSYoutubePlayer

- (void)openVideo:(CDVInvokedUrlCommand*)command
{
    if ( self.playerView == nil ) {
        self.playerView = [[YTPlayerView alloc]init];
        self.playerView.delegate = self;
    }

    self.pluginResult = nil;
    self.videoPlaybackCommand = command;
    NSString* videoID = [command.arguments objectAtIndex:0];
    if (videoID != nil) {
        NSDictionary *playerVars = @{ @"origin" : @"http://www.youtube.com" };
        [self.playerView loadWithVideoId:videoID playerVars:playerVars];
        self.pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    } else {
        self.pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Missing videoID Argument"];
    }

}

- (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state {
    if ( state != kYTPlayerStateBuffering ) {
        [self.commandDelegate sendPluginResult:self.pluginResult callbackId:self.videoPlaybackCommand.callbackId];
    }
    // switch (state) {
    //     case kYTPlayerStatePlaying:
    //         NSLog(@" - - - - - - -Started playback");
    //         break;
    //     case kYTPlayerStatePaused:
    //         NSLog(@" - - - - - - - -Paused playback");
    //         break;
    //     case kYTPlayerStateUnstarted:
    //         NSLog(@" - - - - - - - -kYTPlayerStateUnstarted playback");
    //         break;
    //     case kYTPlayerStateEnded:
    //         NSLog(@" - - - - - - - -kYTPlayerStateEnded playback");
    //         break;
    //     case kYTPlayerStateBuffering:
    //         NSLog(@" - - - - - - - -kYTPlayerStateBuffering playback");
    //         break;
    //     case kYTPlayerStateQueued:
    //         NSLog(@" - - - - - - - -kYTPlayerStateQueued playback");
    //         break;
    //     case kYTPlayerStateUnknown:
    //         NSLog(@" - - - - - - - -kYTPlayerStateUnknown playback");
    //         break;
    //     default:
    //          NSLog(@" - - - - - - - -default playback");
    //         break;
    // }
}
- (void)playerView:(YTPlayerView *)playerView receivedError:(YTPlayerError)error {
    [self.commandDelegate sendPluginResult:self.pluginResult callbackId:self.videoPlaybackCommand.callbackId];
}
- (void)playerViewDidBecomeReady:(YTPlayerView *)playerView {
        [self.playerView playVideo];
}

@end
