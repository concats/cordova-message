//
//  ConcatsCordovaMessages.swift
//  Cordova plugin to send messages from the web view to the native side.
//
//  Created by Tom Brückner on 06.09.2015
//  Copyright © 2015 Tom Brückner. All rights reserved.
//

import UIKit

@objc(ConcatsCordovaMessages) class ConcatsCordovaMessages:CDVPlugin {

  func gotoLaunchPage(command: CDVInvokedUrlCommand) {
    let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK)
    let vc = CordovaInterface.sharedInstance.getViewController()
    self.commandDelegate?.sendPluginResult(pluginResult, callbackId: command.callbackId)
    vc.navigationController?.popToRootViewControllerAnimated(true)
  }

}
