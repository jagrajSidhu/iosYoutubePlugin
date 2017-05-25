#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

@interface CDViOSYoutubePlayer : CDVPlugin <YTPlayerViewDelegate>
    @property(nonatomic, strong) YTPlayerView *playerView;
    @property(nonatomic, strong) CDVPluginResult* pluginResult;
    @property(nonatomic, strong) CDVInvokedUrlCommand* videoPlaybackCommand;
    - (void) openVideo:(CDVInvokedUrlCommand*)command;
@end
