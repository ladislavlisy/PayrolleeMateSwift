//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

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
    //    SpanOfYears testInterval = new SpanOfYears(2013, 2013)
    //    string testName = testInterval.ClassName ()
    //    XCTAssertEqual ("2013", testName)
    }
    
    func testShould_Return_IntervalName_2011to2013 ()
    {
    //    SpanOfYears testInterval = new SpanOfYears(2011, 2013)
    //    string testName = testInterval.ClassName ()
    //    XCTAssertEqual ("2011to2013", testName)
    }
    
    func testShould_Return_IntervalArray_2011_2015 ()
    {
    //    UInt16[] testChangeYears = new UInt16[] {2011,2012,2014,2016,2017,0}
    //
    //    SeqOfYears testYearArray = new SeqOfYears (testChangeYears)
    //
    //    SpanOfYears[] expIntervalArray = new SpanOfYears[] {
    //        new SpanOfYears(2011, 2011),
    //        new SpanOfYears(2012, 2013),
    //        new SpanOfYears(2014, 2015),
    //        new SpanOfYears(2016, 2016),
    //        new SpanOfYears(2017, 2099)
    //    }
    //    SpanOfYears[] testIntervalArray = testYearArray.ToArray ()
    //    XCTAssertEqual (expIntervalArray, testIntervalArray)
    }
    
    func testShould_Return_Interval_2011_For_Period_2011 ()
    {
    //    UInt16[] testChangeYears = new UInt16[] {2011,2012,2014,2016,2017,0}
    //
    //    SeqOfYears testYearArray = new SeqOfYears (testChangeYears)
    //
    //    MonthPeriod testPeriod = new MonthPeriod (2011, 1)
    //    SpanOfYears expInterval = new SpanOfYears(2011, 2011)
    //    SpanOfYears testInterval = testYearArray.SpanForPeriod (testPeriod)
    //    XCTAssertEqual (expInterval, testInterval)
    }
    
    func testShould_Return_Interval_2016_For_Period_2016 ()
    {
    //    UInt16[] testChangeYears = new UInt16[] {2011,2012,2014,2016,2017,0}
    //
    //    SeqOfYears testYearArray = new SeqOfYears (testChangeYears)
    //
    //    MonthPeriod testPeriod = new MonthPeriod (2016, 1)
    //    SpanOfYears expInterval = new SpanOfYears(2016, 2016)
    //    SpanOfYears testInterval = testYearArray.SpanForPeriod (testPeriod)
    //    XCTAssertEqual (expInterval, testInterval)
    }
    
    func testShould_Return_Interval_2012to2013_For_Period_2013 ()
    {
    //    UInt16[] testChangeYears = new UInt16[] {2011,2012,2014,2016,2017,0}
    //
    //    SeqOfYears testYearArray = new SeqOfYears (testChangeYears)
    //
    //    MonthPeriod testPeriod = new MonthPeriod (2013, 1)
    //    SpanOfYears expInterval = new SpanOfYears(2012, 2013)
    //    SpanOfYears testInterval = testYearArray.SpanForPeriod (testPeriod)
    //    XCTAssertEqual (expInterval, testInterval)
    }
    
    func testShould_Return_Interval_2017to2099_For_Period_2018 ()
    {
    //    UInt16[] testChangeYears = new UInt16[] {2011,2012,2014,2016,2017,0}
    //
    //    SeqOfYears testYearArray = new SeqOfYears (testChangeYears)
    //
    //    MonthPeriod testPeriod = new MonthPeriod (2018, 1)
    //    SpanOfYears expInterval = new SpanOfYears(2017, 2099)
    //    SpanOfYears testInterval = testYearArray.SpanForPeriod (testPeriod)
    //    XCTAssertEqual (expInterval, testInterval)
    }
}
