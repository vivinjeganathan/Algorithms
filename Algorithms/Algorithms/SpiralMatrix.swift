//
//  SpiralMatrix.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/27/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class SpiralMatrix: NSObject {

    func test() {
        //print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))
        print(spiralOrder([[]]))
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        var left = 0, right = matrix.first?.count ?? 0 - 1, top = 0, bottom = matrix.count - 1
        var direction = 0
        var outputArray = [Int]()
        
        while left <= right && top <= bottom {
            
            if direction == 0 {
                for i in left...right {
                    outputArray.append(matrix[left][i])
                }
                top += 1
                direction = 1
            } else if direction == 1 {
                for i in top...bottom {
                    outputArray.append(matrix[i][right])
                }
                right -= 1
                direction = 2
            } else if direction == 2 {
                var i = right
                while i >= left {
                    outputArray.append(matrix[bottom][i])
                    i -= 1
                }
                bottom -= 1
                direction = 3
            } else if direction == 3 {
                var i = bottom
                while i >= top {
                    outputArray.append(matrix[i][left])
                    i -= 1
                }
                left += 1
                direction = 0
            }
        }
        return outputArray
    }
}
