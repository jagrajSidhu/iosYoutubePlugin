/*global cordova, module*/

module.exports = {
    openVideo: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "iOSYoutubePlayer", "openVideo", [id]);
    }
};
