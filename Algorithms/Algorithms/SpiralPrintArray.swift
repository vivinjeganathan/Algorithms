//
//  SpiralPrintArray.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 3/6/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class SpiralPrintArray: NSObject {
    
    func printArraySpirally(array:[[Int]]) -> [Int] {
        
//        for (i, subArray) in array.enumerated() {
//            for (j, element) in subArray.enumerated() {
//                print(element)
//            }
//        }
        var i = 0, j = 0
        
        while i <= array.count {
            
            while j <= array[i].count {
                
                print("%d - %d", i, j)
                j = j + 1
            }
            
            i = i + 1
            print("%d - %d", i, j)
        }
        
        return [1]
    }
}
