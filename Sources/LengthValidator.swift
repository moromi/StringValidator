//
//  LengthValidator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public struct LengthValidator: Validator {
  private let range: CountableClosedRange<Int>
  private let ignoreWhitespaces: Bool
  private let allowBlank: Bool
  private let allowNil: Bool
  
  public init(range: CountableClosedRange<Int>, ignoreWhitespaces: Bool = false, allowBlank: Bool = false, allowNil: Bool = false) {
    self.range = range
    self.ignoreWhitespaces = ignoreWhitespaces
    self.allowBlank = allowBlank
    self.allowNil = allowNil
  }
  
  public func validate(_ string: String?) -> Bool {
    if allowNil && string == nil { return true }
    guard var string = string else { return false }
    if allowBlank && string.isEmpty { return true }
    if ignoreWhitespaces {
      string = string.trimmingCharacters(in: .whitespaces)
    }
    
    return range.contains(string.count)
  }
}
