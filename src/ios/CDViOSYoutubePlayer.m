#import "CDViOSYoutubePlayer.h"

@implementation CDViOSYoutubePlayer

- (void)openVideo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* videoID = [command.arguments objectAtIndex:0];
    if (videoID != nil) {
        ViewController *youtubePlayerViewController = [[ViewController alloc] initWithVideoIdentifier:videoID];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Missing videoID Argument"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
