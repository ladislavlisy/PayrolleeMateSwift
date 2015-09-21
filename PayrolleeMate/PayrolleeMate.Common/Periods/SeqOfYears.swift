//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

class SeqOfYears {
    static let END_YEAR_ARRAY: UInt32 = 2100;
    static let END_YEAR_INTER: UInt32 = 2099;

    private let milestones: Array<SpanOfYears>;

    init(years: Array<UInt32>) {
        func transformZeroToUpto(year: UInt32) -> UInt32 {
            return (year == 0) ? SeqOfYears.END_YEAR_ARRAY : year;
        }
        func isSortedBefore(x: UInt32, y: UInt32) -> Bool {
            return transformZeroToUpto(x) < transformZeroToUpto(y);
        }
        func transformYearsToSpan(yearFrom yearFrom: UInt32, yearUpto: UInt32) -> SpanOfYears {
            let tranUpto = transformZeroToUpto(yearUpto);
            let spanUpto = (tranUpto == yearFrom) ? tranUpto : (UInt32)(tranUpto - 1);
            return SpanOfYears(from: yearFrom, upto: spanUpto);
        }
        func yearZeroFilter(x: UInt32) -> Bool {
            return (x != 0);
        }
        var sortedYears = years.sort(isSortedBefore);

        let beginsYears = sortedYears.filter(yearZeroFilter);
        let finishYears = Array(sortedYears[1..<sortedYears.count]);
        let sortedZiped = Zip2Sequence(beginsYears, finishYears);
        milestones = sortedZiped.map {(from, upto) in transformYearsToSpan(yearFrom: from, yearUpto: upto)};
    }

    func yearsIntervalForPeriod(period: MonthPeriod) -> SpanOfYears {
        func periodFilter(span span: SpanOfYears, period: MonthPeriod) -> Bool {
            return (period.year() >= span.yearFrom() && period.year() <= span.yearUpto());
        }
        let validSpan: [SpanOfYears] = milestones.filter ({span in periodFilter(span: span, period: period)});
        return validSpan.first!;
    }

    func yearsIntervalList() -> Array<SpanOfYears> {
        return Array<SpanOfYears>(milestones);
    }
}
