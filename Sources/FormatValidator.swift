//
//  FormatValidator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public struct FormatValidator: Validator {
  private let pattern: String
  private let regexp: NSRegularExpression
  
  public init(pattern: String) {
    self.pattern = pattern
    regexp = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
  }
  
  public func validate(_ string: String?) -> Bool {
    guard let string = string else { return false }
    
    return regexp.numberOfMatches(in: string, options: [], range: NSRange(location: 0, length: string.characters.count)) > 0
  }
}
