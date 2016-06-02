enum CloseRangeError: ErrorType {
    case ArgumentError
}

struct ClosedRange {
    let lowerEndpoint: Int
    let upperEndpoint: Int

    let array: Array<Int>

    init(lowerEndpoint l_int: Int, upperEndpoint u_int: Int) throws {
        if l_int > u_int {
            throw CloseRangeError.ArgumentError
        }

        self.lowerEndpoint = l_int
        self.upperEndpoint = u_int

        self.array = Array(l_int...u_int)
    }

    func getRange() -> Range<Int> {
        return lowerEndpoint...upperEndpoint
    }
}

extension ClosedRange {
    func toString() -> String {
        return "[\(lowerEndpoint),\(upperEndpoint)]"
    }
}

extension ClosedRange {
    func equals(compared: ClosedRange) -> Bool {
        return (lowerEndpoint == compared.lowerEndpoint) && (upperEndpoint == compared.upperEndpoint)
    }
}

extension ClosedRange {
    func contains(compared: Int) -> Bool {
        return (lowerEndpoint <= compared) && (compared <= upperEndpoint)
    }

    func contains(compared: ClosedRange) -> Bool {
        return (lowerEndpoint <= compared.lowerEndpoint) && (upperEndpoint >= compared.upperEndpoint)
    }
}
