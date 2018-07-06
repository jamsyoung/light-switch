//
//  util.swift
//  Light Switch
//
//  Created by Jamie Young on 7/6/18.
//  Copyright © 2018 Yung James. All rights reserved.
//

import Foundation

@discardableResult
func runAppleScript(_ source: String) -> String? {
  return NSAppleScript(source: source)?.executeAndReturnError(nil).stringValue
}
