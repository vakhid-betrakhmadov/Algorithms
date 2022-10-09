public struct HashTableTwoSumAlgorithm: TwoSumAlgorithm {
    public init() {}
    
    public func indicesOfElements(addingUpTo sum: Int, in integers: [Int]) -> (Int, Int)? {
        var seenIndexByElement = [Int: Int]()
        
        for i in (0..<integers.count) {
            if let j = seenIndexByElement[sum - integers[i]] {
                return (i, j)
            }
            seenIndexByElement[integers[i]] = i
        }
        
        return nil
    }
}
