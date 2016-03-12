//
//  MultipleValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class MultipleValidatorTests: XCTestCase {
  func testValidate() {
    let validator = MultipleValidator(validators: [
        LengthValidator(range: 1...2),
        FormatValidator(pattern: "^[a-z]+$")
      ])
    
    // Length: OK, Format: OK
    XCTAssertTrue(validator.validate("ab"))

    // Length: OK, Format: NG
    XCTAssertFalse(validator.validate("a1"))
    
    // Length: NG, Format: OK
    XCTAssertFalse(validator.validate("abcd"))
    
    // Length: NG, Format: NG
    XCTAssertFalse(validator.validate("1234"))
  }
}
