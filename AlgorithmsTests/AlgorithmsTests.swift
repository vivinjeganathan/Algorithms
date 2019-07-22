//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Vivin Jeganathan on 3/3/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import XCTest
@testable import Algorithms

class AlgorithmsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBinarySearch1() {
        XCTAssertEqual(2, BinarySearch().performBinarySearch(sortedArray: [2,4,5,9,13,34,67], searchElement: 5))
    }
    
    func testBinarySearch2() {
        XCTAssertEqual(5, BinarySearch().performBinarySearch(sortedArray: [2,4,5,13,34,67], searchElement: 67))
    }
    
    func testBinarySearch3() {
        XCTAssertEqual(4, BinarySearch().performBinarySearch(sortedArray: [2,4,5,13,34,67], searchElement: 34))
    }
    
    func testBinarySearch4() {
        XCTAssertEqual(-1, BinarySearch().performBinarySearch(sortedArray: [2,4,5,13,34,67], searchElement: 14))
    }

    func testBinarySearchFirstOccurance1() {
        XCTAssertEqual(-1, BinarySearch().findFirstOccurance(of: 11, in: [2,4,5,13,34,67]))
    }
    
    func testBinarySearchFirstOccurance2() {
        XCTAssertEqual(1, BinarySearch().findFirstOccurance(of: 4, in: [2,4,4,4,34,67]))
    }
    
    func testBinarySearchFirstOccurance3() {
        XCTAssertEqual(5, BinarySearch().findLastOccurance(of: 34, in: [2,4,4,4,34,34]))
    }
    
    func testBinarySearchCountOfElement1() {
        XCTAssertEqual(2, BinarySearch().findCount(of: 34, in: [2,4,4,4,34,34]))
    }
    
    func testBinarySearchCountOfElement2() {
        XCTAssertEqual(0, BinarySearch().findCount(of: 66, in: [2,4,4,4,34,34]))
    }
    
    func testBinarySearchCountOfElement3() {
        XCTAssertEqual(1, BinarySearch().findCount(of: 2, in: [2,4,4,4,34,34]))
    }
    
    func testBinarySearchNumberOfRotations1() {
        XCTAssertEqual(2, BinarySearch().findNumberOfRotations(in: [60,88,2,4,34]))
    }
    
    func testBinarySearchNumberOfRotations2() {
        XCTAssertEqual(5, BinarySearch().findNumberOfRotations(in: [60,88,99,104,105,4,34]))
    }
    
    func testBinarySearchNumberOfRotations3() {
        XCTAssertEqual(0, BinarySearch().findNumberOfRotations(in: [2,4,34,60,88]))
    }
    
    func testBinarySearchNumberOfRotations4() {
        XCTAssertEqual(4, BinarySearch().findNumberOfRotations(in: [11,12,15,18,2,5,6,8]))
    }
    
    func testBinarySearchFindElementInRotationedArray1() {
        XCTAssertEqual(3, BinarySearch().findElementInRotationedArray(searchElement: 18, in: [11,12,15,18,2,5,6,8]))
    }
    
    func testBinarySearchFindElementInRotationedArray2() {
        XCTAssertEqual(7, BinarySearch().findElementInRotationedArray(searchElement: 8, in: [11,12,15,18,2,5,6,8,10]))
    }
    
    func testBinarySearchFindElementInRotationedArray3() {
        XCTAssertEqual(6, BinarySearch().findElementInRotationedArray(searchElement: 6, in: [11,12,15,18,2,5,6,8,10]))
    }
    
    func testBinarySearchFindElementInRotationedArray4() {
        XCTAssertEqual(4, BinarySearch().findElementInRotationedArray(searchElement: 0, in: [4,5,6,7,0,1,2]))
    }
    
    func testBinarySearchFindElementInRotationedArray5() {
        XCTAssertEqual(0, BinarySearch().findElementInRotationedArray(searchElement: 5, in: [5,1,3]))
    }
}
