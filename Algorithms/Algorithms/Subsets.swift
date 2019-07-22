//
//  Subsets.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class Subsets: NSObject {
    
    func sample() {
        
        getAllSubsets(nums: [1,2,3])
    }
    
    func getAllSubsets(nums:[Int]) {
        
        var outputArray = [[Int]]()
        for i in 1...nums.count {
            var result = [Int]()
            backtrack(nums: nums, result: &result, start: 0, subSetSize: i, outputArray: &outputArray)
        }
        
        print(outputArray)
    }
    
    func backtrack(nums: [Int], result:inout [Int], start: Int, subSetSize: Int, outputArray: inout [[Int]]) {
        
        if subSetSize == 0 {
            outputArray.append(result)
            return
        }
        
        if start <= (nums.count-1) {
            for i in start...(nums.count-1) {
                
                result.append(nums[i])
                backtrack(nums: nums, result: &result, start: i+1, subSetSize: subSetSize-1, outputArray: &outputArray)
                result.removeLast()
            }
        }
    }
}
