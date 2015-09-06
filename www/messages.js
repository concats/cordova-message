var exec = require("cordova/exec");

var messages = {};
/**
 * Go to launch page page of native app
 */
messages.gotoLaunchPage = function(successCallback, errorCallback) {

  console.log('called gotoLaunchPage');

  var options = [];

  if (typeof errorCallback !== 'function') {
    errorCallback = function() {};
  }

  if (typeof successCallback !== "function") {
    successCallback = function() {};
  }

  exec(successCallback, errorCallback, 'ConcatsMessages',
    'gotoLaunchPage',
    options);
};

module.exports = messages;
