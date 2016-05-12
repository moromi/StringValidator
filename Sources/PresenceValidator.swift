//
//  PresenceValidator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public struct PresenceValidator: Validator {
  private let ignoreWhitespaces: Bool
  
  public init(ignoreWhitespaces: Bool = false) {
    self.ignoreWhitespaces = ignoreWhitespaces
  }
  
  public func validate(_ string: String?) -> Bool {
    guard var string = string else { return false }

    if ignoreWhitespaces {
      string = string.trimmingCharacters(in: .whitespaces)
    }
    
    return !string.isEmpty
  }
}
