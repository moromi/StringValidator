//
//  InclusionValidator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public struct InclusionValidator: Validator {
  private let items: [String]
  
  public init(items: [String]) {
    self.items = items
  }
  
  public func validate(_ string: String?) -> Bool {
    guard let string = string else { return false }
    
    return items.contains(string)
  }
}
