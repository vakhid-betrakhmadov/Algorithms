public struct LinearCountOccurrences<C>: CountOccurrencesAlgorithm where C: Collection, C.Element: Equatable {
    public init() {}
    
    public func countOccurrences(of element: C.Element, in collection: C) -> Int {
        var occurances = 0
        for currentElement in collection where currentElement == element {
            occurances += 1
        }
        return occurances
    }
}
