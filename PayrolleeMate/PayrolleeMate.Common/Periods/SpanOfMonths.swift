//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

public class SpanOfMonths: Equatable, Comparable, DebugPrintable {
    static func createFromYear(year:UInt32) -> SpanOfMonths {
        return SpanOfMonths(from: MonthPeriod.beginYear(year), upto: MonthPeriod.endYear(year));
    }

    static func createFromMonth(period:MonthPeriod) -> SpanOfMonths {
        return SpanOfMonths(from: period, upto: period);
    }

    private let from: MonthPeriod

    private let upto: MonthPeriod

    init(from: MonthPeriod, upto: MonthPeriod) {
        self.from = from;
        self.upto = upto;
    }

    func periodFrom() -> MonthPeriod {
        return from;
    }

    func periodUpto() -> MonthPeriod {
        return upto;
    }

    func compareToInterval(other: SpanOfMonths) -> Int {
        if (from == other.from)
        {
            return upto.compareToPeriod(other.upto);
        }
        else
        {
            return from.compareToPeriod(other.from);
        }
    }

    func isEqualToInterval(other : SpanOfMonths) -> Bool {
        return (from == other.from && upto == other.upto);
    }

    func className() -> String {
        if (from == upto) {
            return "\(from)";
        }
        return "\(from)to\(upto)";
    }

    public var debugDescription: String {
        return className();
    }
}

public func toString(interval: SpanOfMonths) -> String {
    return interval.className();
}

public func == (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) == 0);
}

public func != (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) != 0);
}

public func > (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) > 0);
}

public func >= (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) >= 0);
}

public func < (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) < 0);
}

public func <= (first: SpanOfMonths, other: SpanOfMonths) -> Bool {
    return (first.compareToInterval(other) <= 0);
}

