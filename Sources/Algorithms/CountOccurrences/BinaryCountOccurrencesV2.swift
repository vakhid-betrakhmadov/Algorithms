public struct BinaryCountOccurrencesV2<C>: CountOccurrencesAlgorithm where C: RandomAccessCollection, C.Element: Comparable {
    public init() {}
    
    public func countOccurrences(of element: C.Element, in collection: C) -> Int {
        var elementStartIndex: C.Index {
            var startIndex = collection.startIndex
            var endIndex = collection.endIndex

            while startIndex < endIndex {
                let middleIndex = collection.index(startIndex, offsetBy: collection.distance(from: startIndex, to: endIndex) / 2)

                if collection[middleIndex] < element {
                    startIndex = collection.index(after: middleIndex)
                } else {
                    endIndex = middleIndex
                }
            }

            return startIndex
        }

        var elementEndIndex: C.Index {
            var startIndex = collection.startIndex
            var endIndex = collection.endIndex

            while startIndex < endIndex {
                let middleIndex = collection.index(startIndex, offsetBy: collection.distance(from: startIndex, to: endIndex) / 2)

                if collection[middleIndex] <= element {
                    startIndex = collection.index(after: middleIndex)
                } else {
                    endIndex = middleIndex
                }
            }

            return startIndex
        }

        return collection.distance(from: elementStartIndex, to: elementEndIndex)
    }
}
