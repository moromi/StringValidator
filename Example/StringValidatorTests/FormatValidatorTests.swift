//
//  FormatValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class FormatValidatorTests: XCTestCase {
  func testValidate() {
    let validator = FormatValidator(pattern: "^[a-z]+$")
    
    XCTAssertFalse(validator.validate(nil))
    XCTAssertTrue(validator.validate("abcde"))
    XCTAssertFalse(validator.validate("abd1fa"))
  }
}

