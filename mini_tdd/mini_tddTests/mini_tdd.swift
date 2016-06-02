struct ClosedRange {
    let begin: Int
    let end: Int

    init(begin b_int: Int, end e_int: Int) {
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
