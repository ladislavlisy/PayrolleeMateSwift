//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import UIKit
import XCTest

class TestMonthPeriod: XCTestCase {

//    UInt32 testPeriodCodeJan = 201401
//    UInt32 testPeriodCodeFeb = 201402
//    UInt32 testPeriodCode501 = 201501
//    UInt32 testPeriodCode402 = 201402

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testShould_Compare_Different_Periods_AsEqual_When_2014_01() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCodeJan)
    //
    //    XCTAssertEqual(testPeriodOne, testPeriodTwo)
    }

    func testShould_Compare_Different_Periods_AsEqual_When_2014_02()  {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeFeb)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCodeFeb)
    //
    //    XCTAssertEqual(testPeriodOne, testPeriodTwo)
    }

    func testShould_Compare_Different_Periods_SameYear_AsGreater() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCodeFeb)
    //
    //    XCTAssertNotEqual(testPeriodTwo, testPeriodOne)
    //
    //    XCTAssertGreaterThan(testPeriodTwo, testPeriodOne)
    }

    func testShould_Compare_Different_Periods_SameYear_AsLess() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCodeFeb)
    //
    //    XCTAssertNotEqual(testPeriodOne, testPeriodTwo)
    //
    //    XCTAssertLess(testPeriodOne, testPeriodTwo)
    }

    func testShould_Compare_Different_Periods_SameMonth_AsGreater()  {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCode501)
    //
    //    XCTAssertNotEqual(testPeriodTwo, testPeriodOne)
    //
    //    XCTAssertGreaterThan(testPeriodTwo, testPeriodOne)
    }

    func testShould_Compare_Different_Periods_SameMonth_AsLess() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCode501)
    //
    //    XCTAssertNotEqual(testPeriodOne, testPeriodTwo)
    //
    //    XCTAssertLess(testPeriodOne, testPeriodTwo)
    }

    func testShould_Compare_Different_Periods_DifferentYear_AsGreater() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCode402)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCode501)
    //
    //    XCTAssertNotEqual(testPeriodTwo, testPeriodOne)
    //
    //    XCTAssertGreaterThan(testPeriodTwo, testPeriodOne)
    }

    func testShould_Compare_Different_Periods_DifferentYear_AsLess() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCode402)
    //
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCode501)
    //
    //    XCTAssertNotEqual(testPeriodOne, testPeriodTwo)
    //
    //    XCTAssertLess(testPeriodOne, testPeriodTwo)
    }

    func testShould_Return_Periods_Year_And_Month_2014_01() {
    //    MonthPeriod testPeriodOne = new MonthPeriod (testPeriodCodeJan)
    //
    //    XCTAssertEqual(testPeriodOne.Year(), 2014)
    //    XCTAssertEqual(testPeriodOne.Month(), 1)
    //
    //    XCTAssertEqual(testPeriodOne.YearInt(), 2014)
    //    XCTAssertEqual(testPeriodOne.MonthInt(), 1)
    }

    func testShould_Return_Periods_Year_And_Month_2014_02() {
    //    MonthPeriod testPeriodTwo = new MonthPeriod (testPeriodCodeFeb)
    //
    //    XCTAssertEqual((testPeriodTwo.Year(), 2014)
    //    XCTAssertEqual((testPeriodTwo.Month(), 2)
    //
    //    XCTAssertEqual((testPeriodTwo.YearInt(), 2014)
    //    XCTAssertEqual((testPeriodTwo.MonthInt(), 2)
    }
}
