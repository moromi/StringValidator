//
//  MultipleValidator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public struct MultipleValidator: Validator {
  private let validators: [Validator]
  
  public init(validators: [Validator]) {
    self.validators = validators
  }
  
  public func validate(_ string: String?) -> Bool {
    for validator in validators {
      if !validator.validate(string) { return false }
    }
    return true
  }
}
