//
//  BinaryTreeLevelOrder.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class BinaryTreeLevelOrder: NSObject {
    
    func test() {
        
        let node = TreeNode(3)
        let node1 = TreeNode(9)
        let node2 = TreeNode(20)
        let node3 = TreeNode(4)
        let node4 = TreeNode(8)
        let node5 = TreeNode(15)
        let node6 = TreeNode(7)
        
        node.left = node1
        node.right = node2
        
        node1.left = node3
        node1.right = node4
        
//        node2.left = node5
//        node2.right = node6
        
        print(levelOrder(node))
    }
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        var nodesArray = [TreeNode]()
        var tempArray = [TreeNode]()
        var outputArray = [[Int]]()
        
        if root != nil {
            nodesArray.append(root!)
        }
        
        var levelArray = [Int]()
        
        while nodesArray.count > 0 {
            
            let node = nodesArray.removeFirst()
            levelArray.append(node.val)
            
            if node.left != nil {
                tempArray.append(node.left!)
            }
            
            if node.right != nil {
                tempArray.append(node.right!)
            }
            
            if nodesArray.count == 0 {
                outputArray.append(levelArray)
                levelArray.removeAll()
                swap(&nodesArray, &tempArray)
            }
            
        }
        
        return outputArray
    }
}
