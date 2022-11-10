public protocol TowersOfHanoiAlgorithm {
    func move<T>(from source: inout [T], to destination: inout [T], using auxiliary: inout [T])
}
