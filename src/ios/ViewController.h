//
//  ViewController.h
//  Testing
//
//  Created by Jagraj Singh on 2017-04-16.
//  Copyright © 2017 Jagraj Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTPlayerView.h"

@interface ViewController : UIViewController<YTPlayerViewDelegate>
@property(nonatomic, strong) YTPlayerView *playerView;

@end
