//
//  Heap.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/30/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class Heap: NSObject {
    
    func createMinHeap(from binaryTree: Graph<Int>) {
        
        var bfsArray = binaryTree.breadthFirstTraversal()
        
        var i = bfsArray.count - 1
        
        while i > 0 {
            
            let parentIndex = abs(i/2)
            if !(bfsArray[i] > bfsArray[parentIndex]) {
                
            }
        }
    }
}
