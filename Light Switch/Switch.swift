//
//  Switch.swift
//  Light Switch
//
//  Created by Jamie Young on 7/6/18.
//  Copyright © 2018 Yung James. All rights reserved.
//

import Foundation

struct Switch {
  private static let prefix = "tell application \"System Events\" to tell appearance preferences to"

  static var isEnabled: Bool {
    get {
      return UserDefaults.standard.string(forKey: "AppleInterfaceStyle") == "Dark"
    }
    set {
      toggle(force: newValue)
    }
  }

  static func toggle(force: Bool? = nil) {
    let value = force.map(String.init) ?? "not dark mode"
    runAppleScript("\(prefix) set dark mode to \(value)")
  }
}
