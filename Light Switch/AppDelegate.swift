//
//  AppDelegate.swift
//  Light Switch
//
//  Created by jyoung on 7/6/18.
//  Copyright © 2018 Yung James. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    if let button = statusItem.button {
      button.image = NSImage(named:NSImage.Name("StatusBarButtonImage"))
      button.action = #selector(toggleSwitch(_:))
    }

    func constructMenu() {
      let menu = NSMenu()
      menu.addItem(NSMenuItem(title: "Flip the switch", action: #selector(AppDelegate.toggleSwitch(_:)), keyEquivalent: "F"))
      menu.addItem(NSMenuItem.separator())
      menu.addItem(NSMenuItem(title: "Quit Light Switch", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
      statusItem.menu = menu
    }

    constructMenu()
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  @objc func toggleSwitch(_ sender: Any?) {
    print("The switch has been flipped");
    Switch.toggle();
//    NSAppleScript(source: "tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode")?.executeAndReturnError(nil)
  }
}
