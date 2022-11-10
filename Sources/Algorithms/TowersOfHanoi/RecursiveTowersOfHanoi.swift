public struct RecursiveTowersOfHanoi: TowersOfHanoiAlgorithm {
    public init() {}
    
    public func move<T>(from source: inout [T], to destination: inout [T], using auxiliary: inout [T]) {
        move(first: source.count, from: &source, to: &destination, using: &auxiliary)
    }
    
    private func move<T>(first elements: Int, from source: inout [T], to destination: inout [T], using auxiliary: inout [T]) {
        guard elements > 0 else { return }
        move(first: elements-1, from: &source, to: &auxiliary, using: &destination)
        destination.append(source.removeLast())
        move(first: elements-1, from: &auxiliary, to: &destination, using: &source)
    }
}
