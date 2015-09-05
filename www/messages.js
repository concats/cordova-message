var exec = require("cordova/exec");

/**
 * Constructor.
 *
 * @returns {Messages}
 */
function Messages() {}

/**
 * Go to launch page page of native app
 */
Messages.prototype.gotoLaunchPage = function(successCallback, errorCallback) {

  console.log('called gotoLaunchPage');

  var options = [];

  if (typeof errorCallback !== 'function') {
    errorCallback = function() {};
  }

  if (typeof successCallback !== "function") {
    successCallback = function() {};
  }

  exec(successCallback, errorCallback, 'ConcatsMessages', 'gotoLaunchPage',
    options);
};

var messages = new Messages();
module.exports = messages;
