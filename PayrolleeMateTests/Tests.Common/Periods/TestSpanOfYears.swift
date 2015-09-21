//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation
import XCTest

class TestSpanOfYears: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testShould_Return_IntervalName_2013 ()
    {
        let testInterval = SpanOfYears(from: 2013, upto: 2013);
        let testName = testInterval.className();
        XCTAssertEqual ("2013", testName);
    }
    
    func testShould_Return_IntervalName_2011to2013 ()
    {
        let testInterval = SpanOfYears(from: 2011, upto: 2013);
        let testName = testInterval.className();
        XCTAssertEqual ("2011to2013", testName);
    }
    
    func testShould_Return_IntervalArray_2011_2015 ()
    {
        let testChangeYears: Array<UInt32> = [2011, 2012, 2014, 2016, 2017, 0];

        let testYearArray = SeqOfYears (years: testChangeYears);

        let expIntervalArray: Array<SpanOfYears> = [
            SpanOfYears(from: 2011, upto: 2011),
            SpanOfYears(from: 2012, upto: 2013),
            SpanOfYears(from: 2014, upto: 2015),
            SpanOfYears(from: 2016, upto: 2016),
            SpanOfYears(from: 2017, upto: 2099)
        ];

        let testIntervalArray = testYearArray.yearsIntervalList();
        XCTAssertEqual(expIntervalArray, testIntervalArray);
    }
    
    func testShould_Return_Interval_2011_For_Period_2011 ()
    {
        let testChangeYears: Array<UInt32> = [2011, 2012, 2014, 2016, 2017, 0];

        let testYearArray = SeqOfYears (years: testChangeYears);

        let testPeriod = MonthPeriod (year: 2011, month: 1);

        let expInterval = SpanOfYears(from: 2011, upto: 2011);
        let testInterval = testYearArray.yearsIntervalForPeriod(testPeriod);

        XCTAssertEqual (expInterval, testInterval);
    }
    
    func testShould_Return_Interval_2016_For_Period_2016 ()
    {
        let testChangeYears: Array<UInt32> = [2011, 2012, 2014, 2016, 2017, 0];

        let testYearArray = SeqOfYears (years: testChangeYears);

        let testPeriod = MonthPeriod (year: 2016, month: 1);

        let expInterval = SpanOfYears(from: 2016, upto: 2016);
        let testInterval = testYearArray.yearsIntervalForPeriod(testPeriod);

        XCTAssertEqual (expInterval, testInterval);
    }
    
    func testShould_Return_Interval_2012to2013_For_Period_2013 ()
    {
        let testChangeYears: Array<UInt32> = [2011, 2012, 2014, 2016, 2017, 0];

        let testYearArray = SeqOfYears (years: testChangeYears);

        let testPeriod = MonthPeriod (year: 2013, month: 1);

        let expInterval = SpanOfYears(from: 2012, upto: 2013);
        let testInterval = testYearArray.yearsIntervalForPeriod(testPeriod);

        XCTAssertEqual (expInterval, testInterval);
    }
    
    func testShould_Return_Interval_2017to2099_For_Period_2018 ()
    {
        let testChangeYears: Array<UInt32> = [2011, 2012, 2014, 2016, 2017, 0];

        let testYearArray = SeqOfYears (years: testChangeYears);

        let testPeriod = MonthPeriod (year: 2018, month: 1);

        let expInterval = SpanOfYears(from: 2017, upto: 2099);
        let testInterval = testYearArray.yearsIntervalForPeriod(testPeriod);

        XCTAssertEqual (expInterval, testInterval);
    }
}
