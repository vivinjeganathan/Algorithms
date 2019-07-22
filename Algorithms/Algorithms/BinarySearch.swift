//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 3/3/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class BinarySearch: NSObject {
    
    func performBinarySearch(sortedArray:[Int], searchElement:Int) -> Int {
//        return performBinarySearchInRecursion(sortedArray: sortedArray, searchElement: searchElement, range: 0..<sortedArray.count)
        return performBinarySearchNonRecursion(sortedArray:sortedArray, searchElement:searchElement)
    }
    
    private func performBinarySearchInRecursion(sortedArray:[Int], searchElement:Int, range: Range<Int>) -> Int {
        
        if range.upperBound <= range.lowerBound {
            return -1
        }
        
        let midIndex = (range.upperBound + range.lowerBound) / 2
        let midElement = sortedArray[midIndex]
        
        if midElement == searchElement {
            return midIndex
        } else if midElement > searchElement {
            return performBinarySearchInRecursion(sortedArray: sortedArray, searchElement: searchElement, range: range.lowerBound..<midIndex)
        } else {
            return performBinarySearchInRecursion(sortedArray: sortedArray, searchElement: searchElement, range: midIndex+1..<range.upperBound)
        }
    }
    
    private func performBinarySearchNonRecursion(sortedArray:[Int], searchElement:Int) -> Int {
        
        var lowerBound = 0, upperBound = sortedArray.count - 1
        
        while lowerBound <= upperBound {
            
            let midIndex = (upperBound + lowerBound)/2
            let midElement = sortedArray[midIndex]
            
            if midElement == searchElement {
                return midIndex
            } else if midElement > searchElement {
                upperBound = midIndex - 1
            } else {
                lowerBound = midIndex + 1
            }
        }
        return -1
    }
        
}

//FINDING FIRST OR LAST OCCURANCE OF A NUMBER IN A SORTED ARRAY
extension BinarySearch {
    
    func findFirstOccurance(of searchElement:Int, in sortedArray:[Int]) -> Int {
        return findOccurance(of: searchElement, in: sortedArray, isFirstOccurance: true)
    }
    
    func findLastOccurance(of searchElement:Int, in sortedArray:[Int]) -> Int {
        return findOccurance(of: searchElement, in: sortedArray, isFirstOccurance: false)
    }
    
    private func findOccurance(of searchElement:Int, in sortedArray:[Int], isFirstOccurance: Bool) -> Int {

        var lowerBound = 0, upperBound = sortedArray.count - 1
        var elementIsAtIndex = -1
        
        while lowerBound <= upperBound {
            
            let midIndex = (upperBound + lowerBound)/2
            let midElement = sortedArray[midIndex]
            
            if midElement == searchElement {
                elementIsAtIndex = midIndex
                
                if isFirstOccurance {
                    upperBound = midIndex - 1
                } else {
                    lowerBound = midIndex + 1
                }
                
            } else if midElement > searchElement {
                upperBound = midIndex - 1
            } else {
                lowerBound = midIndex + 1
            }
        }
        return elementIsAtIndex
    }
}

//COUNT OF A PARTICULAR ELEMENT IN A SORTED LIST
extension BinarySearch {
    
    func findCount(of searchElement:Int, in sortedArray:[Int]) -> Int {
        
        let firstOccurance = findOccurance(of: searchElement, in: sortedArray, isFirstOccurance: true)
        let lastOccurance = findOccurance(of: searchElement, in: sortedArray, isFirstOccurance: false)
        
        return firstOccurance == -1 ? 0 : (lastOccurance - firstOccurance + 1)
    }
}

//HOW MANY TIMES IS THE SORTED ARRAY ROTATED?
//SEARCH IN ROTATED ARRAY
extension BinarySearch {
    
    func findNumberOfRotations(in circularlySortedArray:[Int]) -> Int {
        
        var lowerBound = 0, upperBound = circularlySortedArray.count - 1
        
        if circularlySortedArray[lowerBound] <= circularlySortedArray[upperBound] {
            return 0
        } else {
            while lowerBound <= upperBound {
                
                let midIndex = (upperBound + lowerBound)/2
                
                if circularlySortedArray[midIndex] > circularlySortedArray[midIndex+1] {
                    return midIndex + 1
                } else if circularlySortedArray[lowerBound] > circularlySortedArray[midIndex] {
                    upperBound = midIndex
                } else {
                    lowerBound = midIndex
                }
            }
        }
        return -1
    }
    
    func findElementInRotationedArray(searchElement:Int, in circularlySortedArray:[Int]) -> Int {
        
        var lowerBound = 0, upperBound = circularlySortedArray.count - 1
        
        while lowerBound <= upperBound {
            
            let midIndex = (upperBound + lowerBound)/2
            let midElement = circularlySortedArray[midIndex]
            
            if midElement == searchElement {
                return midIndex
            } else if circularlySortedArray[lowerBound] > midElement && circularlySortedArray[lowerBound] <= searchElement &&  searchElement >= circularlySortedArray[midIndex]  {
               
                upperBound = midIndex - 1
                
            } else if circularlySortedArray[upperBound] < midElement && circularlySortedArray[upperBound] >= searchElement && searchElement <= circularlySortedArray[midIndex]  {
                
                lowerBound = midIndex + 1
                
            } else {
                if midElement > searchElement {
                    upperBound = midIndex - 1
                } else {
                    lowerBound = midIndex + 1
                }
            }
        }
        return -1
    }
}
