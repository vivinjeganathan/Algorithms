//
//  MaxStack.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/29/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class MaxStack {
    
    var array: [Int]
    var maxArray: [Int]
    
    /** initialize your data structure here. */
    init() {
        array = [Int]()
        maxArray = [Int]()
    }
    
    func push(_ x: Int) {
        array.append(x)
        maxArray.append((maxArray.last ?? x) >= x ? (maxArray.last ?? x) : x)
    }
    
    func pop() -> Int {
        maxArray.removeLast()
        return array.removeLast()
    }
    
    func top() -> Int {
        return array.last ?? 0
    }
    
    func peekMax() -> Int {
        return maxArray.last ?? 0
    }
    
    func popMax() -> Int {
        
        let maxElement = maxArray.last
        maxArray.removeLast()
        
        var tempArray = [Int]()
        
        while array.last != maxElement {
            tempArray.append(pop())
        }
        array.removeLast()
        
        while tempArray.last != nil {
            push(tempArray.removeLast())
        }
        
        return maxElement ?? 0
    }
}
