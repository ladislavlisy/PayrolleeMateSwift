//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

class SeqOfYears {
    static let END_YEAR_ARRAY: UInt32 = 2100;
    static let END_YEAR_INTER: UInt32 = 2099;

    private let milestones: Array<UInt32>;

    init(years: Array<UInt32>) {
        func isSortedBefore(x: UInt32, y: UInt32) -> Bool {
            func transformYear(year: UInt32) -> UInt32 {
                return (year == 0) ? SeqOfYears.END_YEAR_ARRAY : year;
            }
            return transformYear(x) < transformYear(y);
        }
        var yearsTemp = years;
        yearsTemp.sort(isSortedBefore);
        milestones = yearsTemp;
    }

    func yearsIntervalForPeriod(period: MonthPeriod) -> SpanOfYears {
        func forPeriodAccumulator(agr: SpanOfYears, x: UInt32) -> SpanOfYears {
            let intYear = (x == 0) ? SeqOfYears.END_YEAR_ARRAY : x;
            let intFrom = (period.year() >= intYear) ? intYear : agr.yearFrom();
            let intUpto = (period.year() < intYear && agr.yearUpto() == 0) ? (intYear - 1) : agr.yearUpto();

            return SpanOfYears(from: intFrom, upto: intUpto);
        }
        let initsSpan: SpanOfYears = SpanOfYears.createFromYear(0);
        let validSpan: SpanOfYears = milestones.reduce(initsSpan, combine: forPeriodAccumulator);
        return validSpan;
    }

    func toYearsIntervalList() -> Array<SpanOfYears> {
        func toListFilter(x: SpanOfYears) -> Bool {
            return x.yearUpto() != 0;
        }
        func toListAccumulator(agr: Array<SpanOfYears>, x: UInt32) -> Array<SpanOfYears>  {
            var firstPart = agr.filter(toListFilter);

            if (agr.isEmpty) {
                firstPart.append(SpanOfYears(from: x, upto: 0));
                return firstPart;
            } else {
                let lastPart = agr.last!;

                if (x == 0) {
                    let historyFrom = lastPart.yearFrom();
                    let historyUpto = SeqOfYears.END_YEAR_INTER;

                    firstPart.append(SpanOfYears(from: historyFrom, upto: historyUpto));
                    return firstPart;
                } else {
                    let historyFrom = lastPart.yearFrom();
                    let historyUpto = max(x - 1, historyFrom);

                    firstPart.append(SpanOfYears(from: historyFrom, upto: historyUpto));
                    firstPart.append(SpanOfYears(from: x, upto: 0));
                    return firstPart;
                }
            }
        }
        let history: Array<SpanOfYears> = milestones.reduce([SpanOfYears](), combine: toListAccumulator);
        let lastHistoryPart: SpanOfYears = history.last!;
        if (lastHistoryPart.yearUpto() == 0) {
            var firstHistoryPart: Array<SpanOfYears> = history.filter(toListFilter);
            let historyFrom: UInt32 = lastHistoryPart.yearFrom();
            let historyUpto: UInt32 = lastHistoryPart.yearFrom();
            firstHistoryPart.append(SpanOfYears(from: historyFrom, upto: historyUpto));
            return firstHistoryPart;
        }
        return history;
    }
}
