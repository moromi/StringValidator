//
//  Validator.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import Foundation

public protocol Validator {
  func validate(_ string: String?) -> Bool
}
