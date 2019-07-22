//
//  SecondMinimum.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/2/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class SecondMinimum: NSObject {

    static func testFindSecondMin() {
        
        let node = Node<Int>(value: 1)
        let node1 = Node<Int>(value: 1)
        let node2 = Node<Int>(value: 2)
        let node3 = Node<Int>(value: 1)
        let node4 = Node<Int>(value: 1)
        let node5 = Node<Int>(value: 2)
        let node6 = Node<Int>(value: 2)
        
        node.leftNode = node1
        node.rightNode = node2
        
        node1.leftNode = node3
        node1.rightNode = node4
        
        node2.leftNode = node5
        node2.rightNode = node6
        
        print(findSecondMinimumValue(node))
    }
    
    static func findSecondMinimumValue(_ root: Node<Int>?) -> Int {
        
        guard let root = root else {
            return -1
        }
        
        if let left = root.leftNode, let right = root.rightNode {
            
            var secondMinimum = 0
            var firstMinimum = root.value ?? 0
            
            if left.value > root.value {
                secondMinimum = left.value
            } else if right.value > root.value {
                secondMinimum = right.value
            } else {
                return -1
            }
            
            var node = root
            while node != nil {
                
                if let left1 = node.leftNode, let right1 = node.rightNode {
                    if node.value == left1.value {
                        
                        if ((right1.value < secondMinimum) && (right1.value > firstMinimum)) {
                            secondMinimum = right1.value
                        }
                        node = node.leftNode!
                    } else {
                        if left1.value < secondMinimum && left1.value > firstMinimum{
                            secondMinimum = left1.value
                        }
                        node = right1
                    }
                } else {
                    break
                }
            }
            
            return secondMinimum
        }
        
        return -1
    }
}
