//
//  PermutationRevision.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class PermutationRevision: NSObject {
    
    func test() {
        
        var count = [1,1,1,1]
        var answer = Array(repeating: 0, count: 4)
        permute([1,2,2,3], level: 0, count: &count, answer: &answer)
    }
    
    func permute(_ nums: [Int], level: Int, count: inout [Int], answer: inout [Int]) {
        
        if level == nums.count {
            print(answer)
            return
        }
        
        for (index,element) in nums.enumerated() {
            
            if count[index] == 0 {
                continue
            }
            
            answer[level] = element
            count[index] = count[index] - 1
            permute(nums, level: level + 1, count: &count, answer: &answer)
            count[index] = count[index] + 1
        }
    }

}
