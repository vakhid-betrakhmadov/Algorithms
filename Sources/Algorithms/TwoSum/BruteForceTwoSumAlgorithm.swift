public struct BruteForceTwoSumAlgorithm: TwoSumAlgorithm {
    public init() {}
    
    public func indicesOfElements(addingUpTo sum: Int, in integers: [Int]) -> (Int, Int)? {
        for i in (0..<integers.count) {
            for j in (i+1..<integers.count) {
                if integers[i] + integers[j] == sum {
                    return (i, j)
                }
            }
        }

        return nil
    }
}
