import XCTest
import Algorithms

final class TowersOfHanoiAlgorithm: XCTestCase {
    
    func test() {
        var a = [4, 3, 2, 1]
        var b = [Int]()
        var c = [Int]()
        
        RecursiveTowersOfHanoi().move(from: &a, to: &c, using: &b)
        
        XCTAssertEqual(a, [])
        XCTAssertEqual(b, [])
        XCTAssertEqual(c, [4, 3, 2, 1])
    }
}
