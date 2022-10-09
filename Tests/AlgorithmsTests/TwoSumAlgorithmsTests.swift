import XCTest
import Algorithms

final class TwoSumAlgorithmsTests: XCTestCase {
    
    func testIndicesOfElementsAddingUpToSumInCollectionWhenElementsAreInTheMiddle() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertEqual(
                twoSumAlgorithm.indicesOfElements(addingUpTo: 9, in: [11, 2, 7, 15]).map(Array.init)?.sorted(),
                [1, 2].sorted()
            )
        }
    }
    
    func testIndicesOfElementsAddingUpToSumInCollectionWhenElementsAreInTheStart() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertEqual(
                twoSumAlgorithm.indicesOfElements(addingUpTo: 9, in: [2, 7, 11, 15]).map(Array.init)?.sorted(),
                [0, 1].sorted()
            )
        }
    }
    
    func testIndicesOfElementsAddingUpToSumInCollectionWhenElementsAreInTheEnd() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertEqual(
                twoSumAlgorithm.indicesOfElements(addingUpTo: 9, in: [11, 15, 2, 7]).map(Array.init)?.sorted(),
                [2, 3].sorted()
            )
        }
    }
    
    func testIndicesOfElementsAddingUpToSumInCollectionWhenElementsAreAbsent() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertNil(twoSumAlgorithm.indicesOfElements(addingUpTo: 8, in: [11, 15, 2, 7]))
        }
    }
    
    func testIndicesOfElementsAddingUpToSumInCollectionWithJustTwoElementsThatAreTheElements() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertEqual(
                twoSumAlgorithm.indicesOfElements(addingUpTo: 9, in: [2, 7]).map(Array.init)?.sorted(),
                [0, 1]
            )
        }
    }
    
    func testIndicesOfElementsAddingUpToSumInEmptyCollection() {
        for twoSumAlgorithm in twoSumAlgorithms {
            XCTAssertNil(twoSumAlgorithm.indicesOfElements(addingUpTo: 9, in: []))
        }
    }

    private var twoSumAlgorithms: [TwoSumAlgorithm] { 
        [
            BruteForceTwoSumAlgorithm(),
            HashTableTwoSumAlgorithm(),
        ]
    }
}

private extension Array {
    init(_ elements: (Element, Element)) { 
        self.init([elements.0, elements.1])
    }
}
