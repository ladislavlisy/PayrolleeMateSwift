//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

public class MonthPeriod: Equatable, Comparable, CustomDebugStringConvertible {
    static let PRESENT: UInt32 = 0;
    static let TERM_BEG_FINISHED: UInt32 = 32;
    static let TERM_END_FINISHED: UInt32 = 0;
    static let WEEKSUN_SUNDAY: Int = 0;
    static let WEEKMON_SUNDAY: Int = 7;

    static func createFrom(year year:UInt32, month: UInt32) -> MonthPeriod {
        return MonthPeriod(year: year, month: month);
    }

    static func beginYear(year:UInt32) -> MonthPeriod {
        return MonthPeriod(year: year, month: 1);
    }

    static func endYear(year:UInt32) -> MonthPeriod {
        return MonthPeriod(year: year, month: 12);
    }

    static func empty() -> MonthPeriod {
        return MonthPeriod(code: MonthPeriod.PRESENT);
    }

    static func dayOfWeekMonToSun(periodDateCwd: Int) -> Int {
        // DayOfWeek Sunday = 7,
        // Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6,
        return periodDateCwd;
    }

    private let periodCode: UInt32

    init(code: UInt32) {
        self.periodCode = code;
    }

    init() {
        self.periodCode = MonthPeriod.PRESENT;
    }

    init(year:UInt32, month:UInt32) {
        self.periodCode = (100*year + month);
    }

    func code() -> UInt32 {
        return self.periodCode;
    }

    func codeInt() -> Int {
        return Int(self.periodCode);
    }

    func year() -> UInt32 {
        return (periodCode / 100);
    }

    func month() -> UInt32 {
        return (periodCode % 100);
    }

    func yearInt() -> Int {
        return Int(codeInt() / 100);
    }

    func monthInt() -> Int {
        return Int(codeInt() % 100);
    }

    func monthOrder() -> Int {
        return max(0, yearInt() - 2000) * 12 + monthInt();
    }

    func daysInMonth() -> Int {
        return NSDate.DaysInMonth(year: yearInt(), month: monthInt());
    }

    func beginOfMonth() -> NSDate? {
        return NSDate.Date(year: yearInt(), month: monthInt(), day: Int(1));
    }

    func endOfMonth() -> NSDate? {
        return NSDate.Date(year: yearInt(), month: monthInt(), day: daysInMonth());
    }

    func dateOfMonth(dayOrdinal: Int) -> NSDate? {
        let periodDay = min(max(1, dayOrdinal), daysInMonth());
        return NSDate.Date(year: yearInt(), month: monthInt(), day: periodDay);
    }

    func weekDayOfMonth(dayOrdinal: Int) -> Int {
        if let periodDate = dateOfMonth(dayOrdinal) {

            let periodDateCwd = periodDate.WeekDay();

            return MonthPeriod.dayOfWeekMonToSun(periodDateCwd);
        }
        return -1;
    }

    func compareToPeriod(other: MonthPeriod) -> Int {
        if (periodCode == other.periodCode)
        {
            return 0;
        }
        else
        {
            return (codeInt() - other.codeInt());
        }
    }

    func description() -> String {
        if let periodDate = beginOfMonth() {
            let initLocale = NSLocale(localeIdentifier: "us_US");
            let dateFormat = NSDateFormatter();

            dateFormat.locale = initLocale;
            dateFormat.dateFormat = "MMMM yyyy";

            let dateString = dateFormat.stringFromDate(periodDate);
            return dateString;
        }
        return "";
    }

    func isEqualToPeriod(other : MonthPeriod) -> Bool {
        return (periodCode == other.periodCode);
    }

    public var debugDescription: String {
        return description();
    }

}

public func toString(period: MonthPeriod) -> String {
    return String(period.code());
}

public func == (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) == 0);
}

public func != (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) != 0);
}

public func > (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) > 0);
}

public func >= (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) >= 0);
}

public func < (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) < 0);
}

public func <= (first: MonthPeriod, other: MonthPeriod) -> Bool {
    return (first.compareToPeriod(other) <= 0);
}

