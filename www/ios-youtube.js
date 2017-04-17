/*global cordova, module*/

module.exports = {
    updatePluginToWhitelist: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "iOSYoutubePlayer", "openVideo", [id]);
    }
};
