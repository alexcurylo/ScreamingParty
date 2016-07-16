//
//  RawRepresentableEquatableTests.swift
//  ScreamingParty
//
//  Created by Alex Curylo on 2016-07-16.
//  Copyright © 2016 Trollwerks Inc. All rights reserved.
//

import XCTest
@testable import ScreamingParty

class RawRepresentableEquatableTests: XCTestCase {

    enum RRETester: String {
        case A = "A"
        case B = "B"
    }

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testEquality() {
        let caseA = RRETester.A
        var string = "A"
        XCTAssert("A" == caseA, "RawRepresentableEquatable equality failed")
        XCTAssert(string == caseA, "RawRepresentableEquatable equality failed")
        XCTAssertFalse("B" == caseA, "RawRepresentableEquatable equality failed")
        string = RRETester.B.rawValue
        XCTAssertFalse(string == caseA, "RawRepresentableEquatable equality failed")
    }

    func testInequality() {
        let caseA = RRETester.A
        var string = "A"
        XCTAssertFalse("A" != caseA, "RawRepresentableEquatable inequality failed")
        XCTAssertFalse(string != caseA, "RawRepresentableEquatable inequality failed")
        XCTAssert("B" != caseA, "RawRepresentableEquatable inequality failed")
        string = RRETester.B.rawValue
        XCTAssert(string != caseA, "RawRepresentableEquatable inequality failed")
    }

}
