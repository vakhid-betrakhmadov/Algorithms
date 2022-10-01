public protocol SearchAlgorithm<C> {
    associatedtype C: Collection
    
    func index(of element: C.Element, in collection: C) -> C.Index?
}
