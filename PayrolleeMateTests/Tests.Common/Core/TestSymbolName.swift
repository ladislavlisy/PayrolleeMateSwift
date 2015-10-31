//
// Created by Ladislav Lisy on 31.10.15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import UIKit
import XCTest

class TestSymbolName: XCTestCase {
    let testSymbolCode1001: UInt32 = 1001;
    let testSymbolCode2001: UInt32 = 2001;
    let testSymbolCode3001: UInt32 = 3001;
    let testSymbolCode4001: UInt32 = 4001;
    let testSymbolCode5001: UInt32 = 5001;

    override func setUp() {
        super.setUp();
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown();
    }

    func testShould_Compare_Different_Symbols_AsEqual() {
        let testSymbolOne = SymbolName(code:testSymbolCode1001, name:"Begining Symbol");

        let testSymbolTwo = SymbolName(code:testSymbolCode1001, name:"Terminal Symbol");

        XCTAssertEqual(testSymbolOne, testSymbolTwo);
    }

    func testShould_Compare_Different_Symbols_AsGreater() {
        let testSymbolOne = SymbolName(code:testSymbolCode1001, name:"Begining Symbol");

        let testSymbolTwo = SymbolName(code:testSymbolCode5001, name:"Terminal Symbol");

        XCTAssertNotEqual(testSymbolTwo, testSymbolOne);

        XCTAssertGreaterThan(testSymbolTwo, testSymbolOne);
    }

    func testShould_Compare_Different_Symbols_AsLess() {
        let testSymbolOne = SymbolName(code:testSymbolCode1001, name:"Begining Symbol");

        let testSymbolTwo = SymbolName(code:testSymbolCode5001, name:"Terminal Symbol");

        XCTAssertNotEqual(testSymbolOne, testSymbolTwo);

        XCTAssertLessThan(testSymbolOne, testSymbolTwo);
    }

}