//
//  ExclusionValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class ExclusionValidatorTests: XCTestCase {
  func testValidate() {
    let validator = ExclusionValidator(items: ["abc"])
    
    XCTAssertFalse(validator.validate(nil))
    XCTAssertFalse(validator.validate("abc"))
    XCTAssertTrue(validator.validate("abcd"))
  }
}
