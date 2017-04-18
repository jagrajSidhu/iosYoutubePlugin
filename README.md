# Cordova iOS Youtube Video Plugin

This plugin plays youtube videos.

## version
0.0.1

## Using

Install the plugin

    $ cordova plugin add https://github.com/jagrajSidhu/iosYoutubePlugin.git --save

Use following code in your component where playing videos

```js
    declare const iOSYoutubePlayer; // In case you are getting typescript errorMessage
    // Enable plugin
    iOSYoutubePlayer.openVideo('youtube-video-id', function(success){}, function(failure){});
```
