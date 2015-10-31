//
// Created by Ladislav Lisy on 20/06/15.
// Copyright (c) 2015 ___MzdyHrave___. All rights reserved.
//

import Foundation

public class SymbolName: Equatable, Comparable, CustomDebugStringConvertible {
    private let _code: UInt32;
    private let _name: String;

    init(code: UInt32, name: String) {
        self._code = code;
        self._name = name;
    }

    func code() -> UInt32 {
        return self._code;
    }

    func codeInt() -> Int {
        return Int(self._code);
    }

    func name() -> String {
        return self._name;
    }

    func compareToSymbol(other: SymbolName) -> Int {
        if (_code == other._code)
        {
            return 0;
        }
        else
        {
            return (codeInt() - other.codeInt());
        }
    }

    public var debugDescription: String {
        return "\(_name)::\(_code)";
    }
}

public func toString(element: SymbolName) -> String {
    return String(element.code());
}

public func == (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) == 0);
}

public func != (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) != 0);
}

public func > (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) > 0);
}

public func >= (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) >= 0);
}

public func < (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) < 0);
}

public func <= (first: SymbolName, other: SymbolName) -> Bool {
    return (first.compareToSymbol(other) <= 0);
}

