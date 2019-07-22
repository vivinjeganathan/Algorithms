//
//  PerfectSquare.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/13/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class PerfectSquare: NSObject {
    
    func test() {
        print(validSquare([1,0],[-1,0],[0,1],[0,-1]))
    }
    func validSquare(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        
        var arr = [p1,p2,p3,p4]
        var i = 0, j = 0
        var dict1 = [Int: Int]()
        var dict2 = [Int: Int]()
        
        while i < arr.count {
            
            j = i + 1
            while j < arr.count {
                
                let a = abs(arr[i].first! - arr[j].first!)*abs(arr[i].first! - arr[j].first!)
                let b = abs(arr[i].last! - arr[j].last!)*abs(arr[i].last! - arr[j].last!)
                let key1 = a+b
                dict1[key1] = dict1[key1] == nil ? 1 : dict1[key1]! + 1
                
                j = j + 1
            }
            
            i = i + 1
        }
        
        if ( dict1.values.contains(2) && dict1.values.contains(4)) {
            return true
        }
        
        return false
    }
}
