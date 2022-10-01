public func findIndex<C>(
    of element: C.Element,
    in collection: C,
    using searchAlgorithm: some SearchAlgorithm<C>)
-> C.Index? where C: Collection {
    searchAlgorithm.index(of: element, in: collection)
}
