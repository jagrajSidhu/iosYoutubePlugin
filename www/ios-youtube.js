/*global cordova, module*/

module.exports = {
    openVideo: function (id, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "iOSYoutubePlayer", "openVideo", [id]);
    }
};
