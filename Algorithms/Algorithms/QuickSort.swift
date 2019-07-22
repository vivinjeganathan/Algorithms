//
//  QuickSort.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/8/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class QuickSort: NSObject {
    
    static func example() {
        var array = [10,2,4,3,7,8]
        QuickSort().quickSortLomuto(array: &array, low: 0, high: array.count-1)
        print(array)
    }
    
    func quickSortLomuto(array: inout [Int], low: Int, high: Int) {
        
        if low < high {
            let pivot = partition(array: &array, low: low, high: high)
            quickSortLomuto(array: &array, low: low, high: pivot-1)
            quickSortLomuto(array: &array, low: pivot, high: high)
        }
    }
    
    func partition(array: inout [Int], low: Int, high: Int) -> Int {
        
        let pivotElement = array[high]
        var i = low, j = low
        
        while i < high {
            
            if (array[i] <= pivotElement) {
                array.swapAt(j, i)
                j += 1
            }
            i += 1
        }
        array.swapAt(j, high)
        
        return j
    }
}
