//
//  MaxProduct.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/9/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class MaxProduct: NSObject {

    static func testMaxProduct() {
        print(MaxProduct().maxProduct([1,2,-5,-2,-4,3]))
    }
    
    func maxProduct(_ nums: [Int]) -> Int {
        
        var currentProduct = 1, maxProduct = 1, minProduct = 1, currentMinProduct = 1
        var i = 1
        
        if let first = nums.first {
            currentProduct = first
            maxProduct = first
            minProduct = first
        }
        
        while i <= (nums.count - 1) {
            
            if (nums[i] > nums[i] * currentProduct) {
                currentProduct = nums[i]
            } else {
                currentProduct = nums[i] * currentProduct
            }
            
            
//g'            maxProduct = max(maxProduct, currentProduct)
            minProduct = min(minProduct, currentMinProduct)
            i += 1
        }
        
        return max(maxProduct, minProduct)
    }
}
