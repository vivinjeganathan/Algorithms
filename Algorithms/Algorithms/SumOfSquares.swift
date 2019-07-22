//
//  SumOfSquares.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/1/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class SumOfSquares: NSObject {

    static func judgeSquareSum(_ c: Int) -> Bool {
        
        let array = Array(0...Int(sqrt(Double(c))))
        
        var i = 0, j = array.count - 1
        
        while i <= j {
            
            let sum = array[i] * array[i] + array[j] * array[j]
            
            if sum == c {
                return true
            } else if sum > c {
                j = j - 1
            } else {
                i = i + 1
            }
        }
        
        return false
    }
}
