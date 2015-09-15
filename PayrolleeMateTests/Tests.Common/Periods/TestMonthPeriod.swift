//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import UIKit
import XCTest

class TestMonthPeriod: XCTestCase {
    let testPeriodCodeJan :  UInt32 = 201401;
    let testPeriodCodeFeb :  UInt32 = 201402;
    let testPeriodCode501 :  UInt32 = 201501;
    let testPeriodCode402 :  UInt32 = 201402;

    override func setUp() {
        super.setUp();
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown();
    }

    func testShould_Compare_Different_Periods_AsEqual_When_2014_01() {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        let testPeriodTwo = MonthPeriod (code: testPeriodCodeJan);

        XCTAssertEqual(testPeriodOne, testPeriodTwo);
    }

    func testShould_Compare_Different_Periods_AsEqual_When_2014_02()  {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeFeb);

        let testPeriodTwo = MonthPeriod (code: testPeriodCodeFeb);

        XCTAssertEqual(testPeriodOne, testPeriodTwo);
    }

    func testShould_Compare_Different_Periods_SameYear_AsGreater() {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        let testPeriodTwo = MonthPeriod (code: testPeriodCodeFeb);

        XCTAssertNotEqual(testPeriodTwo, testPeriodOne);

        XCTAssertGreaterThan(testPeriodTwo, testPeriodOne);
    }

    func testShould_Compare_Different_Periods_SameYear_AsLess() {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        let testPeriodTwo = MonthPeriod (code: testPeriodCodeFeb);

        XCTAssertNotEqual(testPeriodOne, testPeriodTwo);

        XCTAssertLessThan(testPeriodOne, testPeriodTwo);
    }

    func testShould_Compare_Different_Periods_SameMonth_AsGreater()  {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        let testPeriodTwo = MonthPeriod (code: testPeriodCode501);

        XCTAssertNotEqual(testPeriodTwo, testPeriodOne);

        XCTAssertGreaterThan(testPeriodTwo, testPeriodOne);
    }

    func testShould_Compare_Different_Periods_SameMonth_AsLess() {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        let testPeriodTwo = MonthPeriod (code: testPeriodCode501);

        XCTAssertNotEqual(testPeriodOne, testPeriodTwo);

        XCTAssertLessThan(testPeriodOne, testPeriodTwo);
    }

    func testShould_Compare_Different_Periods_DifferentYear_AsGreater() {
        let testPeriodOne = MonthPeriod (code: testPeriodCode402);

        let testPeriodTwo = MonthPeriod (code: testPeriodCode501);

        XCTAssertNotEqual(testPeriodTwo, testPeriodOne);

        XCTAssertGreaterThan(testPeriodTwo, testPeriodOne);
    }

    func testShould_Compare_Different_Periods_DifferentYear_AsLess() {
        let testPeriodOne = MonthPeriod (code: testPeriodCode402);

        let testPeriodTwo = MonthPeriod (code: testPeriodCode501);

        XCTAssertNotEqual(testPeriodOne, testPeriodTwo);

        XCTAssertLessThan(testPeriodOne, testPeriodTwo);
    }

    func testShould_Return_Periods_Year_And_Month_2014_01() {
        let testPeriodOne = MonthPeriod (code: testPeriodCodeJan);

        XCTAssertEqual(testPeriodOne.year(), 2014);
        XCTAssertEqual(testPeriodOne.month(), 1);

        XCTAssertEqual(testPeriodOne.yearInt(), 2014);
        XCTAssertEqual(testPeriodOne.monthInt(), 1);
    }

    func testShould_Return_Periods_Year_And_Month_2014_02() {
        let testPeriodTwo = MonthPeriod (code: testPeriodCodeFeb);

        XCTAssertEqual(testPeriodTwo.year(), 2014);
        XCTAssertEqual(testPeriodTwo.month(), 2);

        XCTAssertEqual(testPeriodTwo.yearInt(), 2014);
        XCTAssertEqual(testPeriodTwo.monthInt(), 2);
    }

    func testShould_Return_Periods_Month_And_Year_Description() {
        let testPeriodJan = MonthPeriod (code: testPeriodCodeJan);
        let testPeriodFeb = MonthPeriod (code: testPeriodCodeFeb);
        let testPeriod501 = MonthPeriod (code: testPeriodCode501);
        let testPeriod402 = MonthPeriod (code: testPeriodCode402);

        XCTAssertEqual(testPeriodJan.description(), "January 2014");
        XCTAssertEqual(testPeriodFeb.description(), "February 2014");
        XCTAssertEqual(testPeriod501.description(), "January 2015");
        XCTAssertEqual(testPeriod402.description(), "February 2014");
    }
}
