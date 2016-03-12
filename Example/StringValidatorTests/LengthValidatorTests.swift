//
//  LengthValidatorTests.swift
//
//  Created by Takahiro Ooishi
//  Copyright (c) 2016 moromi. All rights reserved.
//  Released under the MIT license.
//

import XCTest
import StringValidator

final class LengthValidatorTests: XCTestCase {
  func testValidate() {
    let validator = LengthValidator(range: 1...5)
    
    XCTAssertFalse(validator.validate(nil))
    
    XCTAssertFalse(validator.validate(""))
    XCTAssertTrue(validator.validate("1"))
    XCTAssertTrue(validator.validate("12"))

    XCTAssertTrue(validator.validate("1234"))
    XCTAssertTrue(validator.validate("12345"))
    XCTAssertFalse(validator.validate("123456"))
  }
  
  func testValidateUseMultibyteString() {
    let validator = LengthValidator(range: 1...5)
    
    XCTAssertFalse(validator.validate(""))
    XCTAssertTrue(validator.validate("一"))
    XCTAssertTrue(validator.validate("一二"))
    
    XCTAssertTrue(validator.validate("一二三四"))
    XCTAssertTrue(validator.validate("一二三四五"))
    XCTAssertFalse(validator.validate("一二三四五六"))
  }
  
  func testValidateUseEmoji() {
    let validator = LengthValidator(range: 1...1)
    XCTAssertFalse(validator.validate("👨‍👩‍👧‍👦"))
  }
  
  func testValidateUseAllowBlank() {
    let validator = LengthValidator(range: 1...5, allowBlank: true)
    XCTAssertTrue(validator.validate(""))
  }
  
  func testValidateUseAllowNil() {
    let validator = LengthValidator(range: 1...5, allowNil: true)
    XCTAssertTrue(validator.validate(nil))
  }
}
