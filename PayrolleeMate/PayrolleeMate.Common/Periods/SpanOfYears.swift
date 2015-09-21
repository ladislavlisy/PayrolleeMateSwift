//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

public class SpanOfYears: Equatable, Comparable, CustomDebugStringConvertible {
    static func createFromYear(year:UInt32) -> SpanOfYears {
        return SpanOfYears(from: year, upto: year);
    }

    static func createFromYearToYear(from:UInt32, upto:UInt32) -> SpanOfYears {
        return SpanOfYears(from: from, upto: upto);
    }

    static func empty() -> SpanOfYears {
        return SpanOfYears(from: 0, upto: 0);
    }

    private let from: UInt32

    private let upto: UInt32

    init(from: UInt32, upto: UInt32) {
        self.from = from;
        self.upto = upto;
    }

    func yearFrom() -> UInt32 {
        return from;
    }

    func yearUpto() -> UInt32 {
        return upto;
    }

    func compareToInterval(other: SpanOfYears) -> Int {
        if (from == other.from)
        {
            return Int(upto) - Int(other.upto);
        }
        else
        {
            return Int(from) - Int(other.from);
        }
    }

    func isEqualToInterval(other : SpanOfYears) -> Bool {
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

public func toString(interval: SpanOfYears) -> String {
    return interval.className();
}

public func == (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) == 0);
}

public func != (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) != 0);
}

public func > (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) > 0);
}

public func >= (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) >= 0);
}

public func < (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) < 0);
}

public func <= (first: SpanOfYears, other: SpanOfYears) -> Bool {
    return (first.compareToInterval(other) <= 0);
}

