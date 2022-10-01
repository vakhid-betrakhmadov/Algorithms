public struct LinearSearch<C>: SearchAlgorithm where C: Collection, C.Element: Equatable {
    public init() {}
    
    public func index(of element: C.Element, in collection: C) -> C.Index? {
        var currentIndex = collection.startIndex
        for currentElement in collection {
            if currentElement == element {
                return currentIndex
            }
            currentIndex = collection.index(after:currentIndex)
        }
        return nil
    }
}
