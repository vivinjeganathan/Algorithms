//
//  MovingAvg.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/22/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class MovingAvg: NSObject {
    var n : Int = 5
    var array = [Int]()
    var lastAverage : Double = 0.0
    
    func next(_ val: Int) -> Double {
        
        if array.count >= n {
            let firstElement = array.removeFirst()
            array.append(val)
            let sum =  Double(n) * lastAverage - Double(firstElement) + Double(val)
            lastAverage = sum / Double(n)
            return lastAverage
        } else {
            array.append(val)
            lastAverage = Double(array.reduce(0) { $0 + $1 }) / Double(array.count)
            return lastAverage
        }
    }
    
    func test() {
        let a = [12009,1965,-940,-8516,-16446,7870,25545,-21028,18430,-23464]
        
        for e in a {
            print(next(e))
        }
        //((-3213.4*5 )-1965+25545)/5
    }
}
