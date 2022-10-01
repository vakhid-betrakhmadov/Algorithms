import XCTest
import Algorithms

final class SearchAlgorithmsTests: XCTestCase {
    
    func testIndexOfElementInCollectionWithMultipleElementsWhenElementIsInTheMiddle() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 3, in: [1, 2, 2, 3, 4, 6, 9].sorted()),
                3
            )
        }
    }
    
    func testIndexOfElementInCollectionWithMultipleElementsWhenElementIsInTheStart() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 1, in: [1, 2, 2, 3, 4, 6, 9].sorted()),
                0
            )
        }
    }
    
    func testIndexOfElementInCollectionWithMultipleElementsWhenElementIsInTheEnd() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 9, in: [1, 2, 2, 3, 4, 6, 9].sorted()),
                6
            )
        }
    }
    
    func testIndexOfElementInCollectionWithMultipleElementsWhenElementIsAbsent() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 5, in: [1, 2, 2, 3, 4, 6, 9].sorted()),
                nil
            )
        }
    }
    
    func testIndexOfElementInCollectionWithSingleElementThatIsTheElement() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 5, in: [5]),
                0
            )
        }
    }
    
    func testIndexOfElementInEmptyCollection() {
        for searchAlgorithm in searchAlgorithms {
            XCTAssertEqual(
                searchAlgorithm.index(of: 5, in: []),
                nil
            )
        }
    }
    
    private var searchAlgorithms: [any SearchAlgorithm<[Int]>] {
        [
            LinearSearch(),
            BinarySearch(),
        ]
    }
}
