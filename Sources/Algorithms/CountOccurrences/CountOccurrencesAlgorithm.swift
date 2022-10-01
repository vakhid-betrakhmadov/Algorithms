public protocol CountOccurrencesAlgorithm<C> {
    associatedtype C: Collection
    
    func countOccurrences(of element: C.Element, in collection: C) -> Int
}
