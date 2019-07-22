//
//  FlowerBed.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/1/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class FlowerBed {
    static func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        if n == 0 {
            return true
        }
        
        var flowerbed = flowerbed
        var i = 1
        var flowersCapacity = 0
        
        while (i < (flowerbed.count - 1)) {
            
            if flowerbed[i] == 0 {
                
                if flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0 {
                    flowersCapacity = flowersCapacity + 1
                    flowerbed[i] = 1
                    if flowersCapacity >= n {
                        return true
                    }
                }
            }
            
            i = i + 1
        }
        
        return false
    }
}
