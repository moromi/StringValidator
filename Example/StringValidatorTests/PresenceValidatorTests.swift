//
//  PresenceValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class PresenceValidatorTests: XCTestCase {
  func testValidate() {
    let validator = PresenceValidator()
    
    XCTAssertFalse(validator.validate(nil))
    XCTAssertFalse(validator.validate(""))
    XCTAssertTrue(validator.validate("abc"))
    XCTAssertTrue(validator.validate(" "))
    XCTAssertTrue(validator.validate("　"))
    XCTAssertTrue(validator.validate(" 　"))
  }
  
  func testValidateWithIgnoreWhitespaces() {
    let validator = PresenceValidator(ignoreWhitespaces: true)
    
    XCTAssertFalse(validator.validate(nil))
    XCTAssertFalse(validator.validate(""))
    XCTAssertTrue(validator.validate("abc"))
    XCTAssertFalse(validator.validate(" "))
    XCTAssertFalse(validator.validate("　"))
    XCTAssertFalse(validator.validate(" 　"))
  }
}
