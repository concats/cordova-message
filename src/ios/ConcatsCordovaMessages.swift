//
//  ConcatsCordovaMessages.swift
//  Cordova plugin to send messages from the web view to the native side.
//
//  Created by Tom Brückner on 06.09.2015
//  Copyright © 2015 Tom Brückner. All rights reserved.
//

import UIKit

class ConcatsCordovaMessages:CDVPlugin {

  func gotoLaunchPage(command: CDVInvokedUrlCommand) {
    var pluginResult: CDVPluginResult? = nil
    if (true) {
      print("gotoLaunchPage called on native side")
      pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
    } else {
      pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAsString: "Arg was null")
    }
    self.commandDelegate?.sendPluginResult(pluginResult, callbackId: command.callbackId)
  }

  /*
  func genericCommand(command: CDVInvokedUrlCommand) {
    var pluginResult: CDVPluginResult? = nil
    let myArg = command.argumentAtIndex(0)
    if (myArg != nil) {
      pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
    } else {
      pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAsString: "Arg was null")
    }
    self.commandDelegate?.sendPluginResult(pluginResult, callbackId: command.callbackId)
  }
  */

}
