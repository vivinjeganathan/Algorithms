//
//  RandomPick.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/28/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class RandomPick: NSObject {
    
    var inputArray = [Int]()
    
    init(_ w: [Int]) {
        
        var i = 1
        
        if w.first != nil {
            inputArray.append(w.first!)
        }
        
        while i < w.count {
            inputArray.append(inputArray[i - 1] + w[i])
            i=i+1
        }
    }
    
    func pickIndex() -> Int {
        
        guard let lastElement = inputArray.last else {
            return 0
        }
        
        let randomNumber = Int.random(in: 0..<lastElement)
        
        var low = 0, high = inputArray.count
        
        while low < high {
            let mid = (low + high)/2
            
            if inputArray[mid] <= randomNumber {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        
        return low
    }
}
