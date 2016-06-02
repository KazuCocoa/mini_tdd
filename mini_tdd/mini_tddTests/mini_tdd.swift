enum CloseRangeError: ErrorType {
    case ArgumentError
}

struct ClosedRange {
    let begin: Int
    let end: Int

    init(begin b_int: Int, end e_int: Int) throws {
        if b_int > e_int {
            throw CloseRangeError.ArgumentError
        }

        self.begin = b_int
        self.end = e_int
    }

    func getRange() -> Range<Int> {
        return begin...end
    }
}

extension ClosedRange {
    func toString() -> String {
        return "[\(begin),\(end)]"
    }
}

extension ClosedRange {
    func equals(compared: ClosedRange) -> Bool {
        return (begin == compared.begin) && (end == compared.end)
    }
}

extension ClosedRange {
    func contains(compared: Int) -> Bool {
        return (begin <= compared) && (compared <= end)
    }

    func contains(compared: ClosedRange) -> Bool {
        return (begin <= compared.begin) && (end >= compared.end)
    }
}
