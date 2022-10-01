public struct BinaryCountOccurrences<C>: CountOccurrencesAlgorithm where C: RandomAccessCollection, C.Element: Comparable {
    public init() {}
    
    public func countOccurrences(of element: C.Element, in collection: C) -> Int {
        guard let elementIndex = findIndex(of: element, in: collection, using: BinarySearch()) else { return 0 }

        var elementLowIndex = elementIndex
        var elementHighIndex = elementIndex
        
        while let newElementLowIndex = findIndex(of: element, in: collection[..<elementLowIndex], using: BinarySearch()) {
            elementLowIndex = newElementLowIndex
        }
        
        while let newElementHighIndex = findIndex(of: element, in: collection[collection.index(after: elementHighIndex)...], using: BinarySearch()) {
            elementHighIndex = newElementHighIndex
        }

        return collection.distance(from: elementLowIndex, to: elementHighIndex) + 1
    }
}
