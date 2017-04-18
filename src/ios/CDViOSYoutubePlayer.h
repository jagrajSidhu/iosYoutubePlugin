#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

@interface CDViOSYoutubePlayer : CDVPlugin <YTPlayerViewDelegate>
    @property(nonatomic, strong) YTPlayerView *playerView;
    - (void) openVideo:(CDVInvokedUrlCommand*)command;
@end
