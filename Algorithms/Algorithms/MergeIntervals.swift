//
//  MergeIntervals.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/27/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class MergeIntervals: NSObject {
    
    static func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        let sortedIntervals = intervals.sorted { (list1, list2) -> Bool in
            list1[0] < list2[0]
        }
        
        var outputList = [[Int]]()
        
        if let first = sortedIntervals.first {
            outputList.append(first)
        }
        
        var i = 1
        
        while i < sortedIntervals.count {
            
            if sortedIntervals[i][0] <= outputList[outputList.count - 1][1] {
                outputList[outputList.count - 1][1] = max(sortedIntervals[i][1], outputList[outputList.count - 1][1])
            } else {
                outputList.append(sortedIntervals[i])
            }
            
            i = i + 1
        }
        
        return outputList
    }
}
