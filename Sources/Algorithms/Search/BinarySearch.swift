public struct BinarySearch<C>: SearchAlgorithm where C: RandomAccessCollection, C.Element: Comparable {
    public init() {}
    
    public func index(of element: C.Element, in collection: C) -> C.Index? {
        var startIndex = collection.startIndex
        var endIndex = collection.endIndex
        
        while startIndex < endIndex {
            let middleIndex = collection.index(startIndex, offsetBy: collection.distance(from: startIndex, to: endIndex) / 2)
            
            if collection[middleIndex] == element {
                return middleIndex
            } else if collection[middleIndex] > element {
                endIndex = middleIndex
            } else {
                startIndex = collection.index(after: middleIndex)
            }
        }
        
        return nil
    }
}
