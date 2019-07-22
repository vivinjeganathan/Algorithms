//
//  Permutations.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/27/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class Permutations: NSObject {
    
    static var resultArray = [[String]]()
    
    static func permute(_ nums: [String]) {

        var count = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: "X", count: nums.count)
        permute(nums, count: &count, level: 0, result: &result)
        print(resultArray)
    }
    
    static func permute(_ nums: [String], count: inout [Int], level: Int, result: inout [String]) {
        
        if level == nums.count {
            print(result)
            resultArray.append(result)
            return
        }
        
        for (index,element) in nums.enumerated() {
            
            if count[index] == 0 {
                continue
            }
          
            result[level] = element
            count[index] = count[index] - 1
            
            permute(nums, count: &count, level: level + 1, result: &result)
            count[index] = count[index] + 1
        }
    }
}
