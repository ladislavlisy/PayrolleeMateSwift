//
// Created by Ladislav Lisy on 07/09/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

extension NSDate {
    class func Date(year year: Int, month: Int, day: Int) -> NSDate? {
        let calendar = NSCalendar.currentCalendar();
        let components = NSDateComponents();
        components.year = year;
        components.month = month;
        components.day = day;
        components.hour = 0;
        components.minute = 0;
        components.second = 0;
        return calendar.dateFromComponents(components);
    }

    class func DateEndOfMonth(year year: Int, month: Int) -> NSDate? {
        let beginDayOfMonth = 1;
        let calendar = NSCalendar.currentCalendar();
        let components = NSDateComponents();
        components.year = year;
        components.month = month;
        components.day = beginDayOfMonth;
        components.hour = 0;
        components.minute = 0;
        components.second = 0;
        let beginOfMonth = calendar.dateFromComponents(components);
        let endDayOfMonth = calendar.rangeOfUnit(
            .Day, inUnit: .Month, forDate: beginOfMonth!).length;
        components.day = (endDayOfMonth);
        return calendar.dateFromComponents(components);
    }

    class func DaysInMonth(year year: Int, month: Int) -> Int {
        let beginDayOfMonth = 1;
        let calendar = NSCalendar.currentCalendar();
        let components = NSDateComponents();
        components.year = year;
        components.month = month;
        components.day = beginDayOfMonth;
        components.hour = 0;
        components.minute = 0;
        components.second = 0;
        let beginOfMonth = calendar.dateFromComponents(components);
        let endDayOfMonth = calendar.rangeOfUnit(
            .Day, inUnit: .Month, forDate: beginOfMonth!).length;
        return endDayOfMonth;
    }

    func Day() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let components = calendar.components(.Month, fromDate: self);
        return components.day;
    }

    func Month() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let components = calendar.components(.Month, fromDate: self);
        return components.month;
    }

    func Year() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let components = calendar.components(.Month, fromDate: self);
        return components.year;
    }

    func WeekDay() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let components = calendar.components(.Weekday, fromDate: self);
        let gregorianWeekday = components.weekday;
        return (gregorianWeekday == 1 ? 7 : gregorianWeekday - 1);
    }

    func WeekDayOrdinal() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let components = calendar.components(.WeekdayOrdinal, fromDate: self);
        return components.weekdayOrdinal;
    }

    func DaysInMonth() -> Int {
        let calendar = NSCalendar.currentCalendar();
        let endDayOfMonth = calendar.rangeOfUnit(
            .Day, inUnit: .Month, forDate: self).length;
        return endDayOfMonth;
    }
}