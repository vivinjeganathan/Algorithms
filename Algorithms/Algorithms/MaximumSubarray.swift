//
//  MaximumSubarray.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/26/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

//Ques 53
class MaximumSubarray: NSObject {
    
    static func maxSubArray(_ nums: [Int]) -> Int {
        
        var i = 0, j = 0, sum = Int.min
        
        while i < nums.count {
            
            var tempsum = nums[i]
            
            if tempsum > sum {
                sum = tempsum
            }
            
            j = i + 1
            while j < nums.count {
                tempsum = tempsum + nums[j]
                
                if tempsum > sum {
                    sum = tempsum
                }
                j = j + 1
            }
            
            i = i + 1
        }
        
        return sum
    }
}
