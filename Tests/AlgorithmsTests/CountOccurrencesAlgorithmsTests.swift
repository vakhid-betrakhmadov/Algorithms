import XCTest
import Algorithms

final class CountOccurrencesAlgorithmsTests: XCTestCase {
    
    func testCountOccurrencesOfElementInCollectionWithMultipleElementsWhenElementIsInTheMiddle() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 4, in: [0, 2, 2, 3, 4, 4, 4, 5, 6, 8, 10]),
                3
            )
        }
    }
    
    func testCountOccurrencesOfElementInCollectionWithMultipleElementsWhenElementIsInTheStart() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 0, in: [0, 0, 0, 2, 2, 3, 4, 5, 6, 8, 10]),
                3
            )
        }
    }
    
    func testCountOccurrencesOfElementInCollectionWithMultipleElementsWhenElementIsInTheEnd() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 10, in: [-5, -2, 0, 1, 2, 3, 4, 5, 10, 10, 10]),
                3
            )
        }
    }
    
    func testCountOccurrencesOfElementInCollectionWithMultipleElementsWhenElementIsAbsent() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 6, in: [-5, -2, 0, 1, 2, 3, 4, 5, 10, 10, 10]),
                0
            )
        }
    }
    
    func testCountOccurrencesOfElementInCollectionWithSingleElementThatIsTheElement() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 6, in: [6]),
                1
            )
        }
    }
    
    func testIndexOfElementInEmptyCollection() {
        for countOccurrencesAlgorithm in countOccurrencesAlgorithms {
            XCTAssertEqual(
                countOccurrencesAlgorithm.countOccurrences(of: 6, in: []),
                0
            )
        }
    }
    
    private var countOccurrencesAlgorithms: [any CountOccurrencesAlgorithm<[Int]>] {
        [
            LinearCountOccurrences(),
            BinaryCountOccurrences(),
            BinaryCountOccurrencesV2(),
        ]
    }
}
