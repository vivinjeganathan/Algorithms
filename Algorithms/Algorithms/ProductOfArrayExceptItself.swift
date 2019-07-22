//
//  ProductOfArrayExceptItself.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/27/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class ProductOfArrayExceptItself: NSObject {
    
    static func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        
        var outputArray = Array(repeating: 1, count: nums.count)
        var i = 1
        outputArray[nums.count - 1] = 1
        
        i = nums.count - 2
        
        while i >= 0 {
            outputArray[i] = (outputArray[i+1] * nums[i+1])
            i = i - 1
        }
        
        i = 0
        
        var product = 1
        
        while i < nums.count {
            
            if i != 0 {
                product = product * nums[i - 1]
                outputArray[i] = (product * outputArray[i])
            }
            
            i = i + 1
        }
        
        return outputArray
    }
}
