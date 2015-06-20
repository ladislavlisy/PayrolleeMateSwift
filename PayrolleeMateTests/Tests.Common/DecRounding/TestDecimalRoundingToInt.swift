//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import UIKit
import XCTest

class TestDecimalRoundingToInt: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    //private const Int32 TEST_POS_RESULT_NUMBER_DOWN = 1000
    //
    //private const Int32 TEST_POS_RESULT_NUMBER_UP = 1001
    
    func testShould_return_Rounded_1000_for_Decimal_with_01_Cents()
    {
    //    decimal testInputs = 1000.01m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_20_Cents()
    {
    //    decimal testInputs = 1000.20m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_49_Cents()
    {
    //    decimal testInputs = 1000.49m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_50_Cents()
    {
    //    decimal testInputs = 1000.50m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_51_Cents()
    {
    //    decimal testInputs = 1000.51m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_60_Cents()
    {
    //    decimal testInputs = 1000.60m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_1000_for_Decimal_with_99_Cents()
    {
    //    decimal testInputs = 1000.99m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_POS_RESULT_NUMBER_UP, testResult)
    }
    
    //private const Int32 TEST_NEG_RESULT_NUMBER_DOWN = -1000
    //
    //private const Int32 TEST_NEG_RESULT_NUMBER_UP = -1001
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_01_Cents()
    {
    //    decimal testInputs = -1000.01m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_20_Cents()
    {
    //    decimal testInputs = -1000.20m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_49_Cents()
    {
    //    decimal testInputs = -1000.49m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_DOWN, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_50_Cents()
    {
    //    decimal testInputs = -1000.50m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_51_Cents()
    {
    //    decimal testInputs = -1000.51m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_60_Cents()
    {
    //    decimal testInputs = -1000.60m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_UP, testResult)
    }
    
    func testShould_return_Rounded_Negative_1000_for_Decimal_with_99_Cents()
    {
    //    decimal testInputs = -1000.99m
    //    Int32 testResult = IntRounding.RoundToInt(testInputs)
    //    XCTAssertEqual(TEST_NEG_RESULT_NUMBER_UP, testResult)
    }
}
