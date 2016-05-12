//
//  InclusionValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class InclusionValidatorTests: XCTestCase {
  func testValidate() {
    let validator = InclusionValidator(items: ["abc"])
    
    XCTAssertFalse(validator.validate(nil))
    XCTAssertTrue(validator.validate("abc"))
    XCTAssertFalse(validator.validate("abcd"))
  }
}
