//
//  RotatedSortedArray.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/6/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class RotatedSortedArray: NSObject {
    
    func test() {
        
        let array = [1,2,3]
        print(findMin(array))
    }
    
    func findMin(_ nums: [Int]) -> Int {
        
        var l = 0, h = nums.count - 1, min = -1
        
        if nums.count > 0 {
            min = nums.first!
        }
        
        
//        while l <= h && l >= 0 {
//            let mid = (l + h)/2
//
//            if nums[mid] > nums[mid+1] {
//                min = nums[mid+1]
//                break
//            } else if nums[l] < nums[mid] {
//                h = mid - 1
//            } else {
//                l = mid + 1
//            }
//        }
        
        return min
    }
}
