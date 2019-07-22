//
//  ArrayDegree.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class ArrayDegree: NSObject {
    
    func sample() {
        
        print(findShortestSubArray([1, 2, 2, 3, 1]))
    }
    
    
    func findShortestSubArray(_ nums: [Int]) -> Int {
        
        var dict = [Int:Int]()
        var maxCount = 0
        
        for element in nums {
            dict[element] = (dict[element] == nil) ? 1 : dict[element]! + 1
        }
        
        for (_,value) in dict {
            if value > maxCount {
                maxCount = value
            }
        }

        let array = dict.filter { (key, value) -> Bool in
            value == maxCount
        }
        
        var minLength = Int.max
        
        for element in array {
            
            let startIndex = nums.firstIndex(of: element.key) ?? 0
            let endIndex = nums.lastIndex(of: element.key) ?? 0
            
            minLength = min(minLength, nums[startIndex...endIndex].count)
        }
        
        return minLength
    }
}
