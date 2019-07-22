//
//  BinaryZigZag.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/2/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class BinaryZigZag: NSObject {

    static func testzigzagLevelOrder() {
        
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
        
        node2.left = node5
        node2.right = node6
        
        //print(BinaryZigZag.zigzagLevelOrder(node))
        //print(BinaryZigZag().findDepth(node))
        print(BinaryZigZag.zigzagLevelOrderUsingStack(node))
    }
    
    func findDepth(_ root: TreeNode?) -> Int {
        
        guard let root = root else {
            return 0
        }
        
        return getDepth(root, level: 0)
    }
    
    func getDepth(_ root: TreeNode?, level: Int) -> Int {
        
        if root == nil {
            return level
        }
        
        var maxdepth = level
        maxdepth = max(getDepth(root?.left, level: level + 1), getDepth(root?.right, level: level + 1))
        return maxdepth
    }
    
    static func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        
        guard let root = root else {
            return [[Int]]()
        }
        
        var outputArray = [[Int]]()
        var nodeQueue = [TreeNode]()
        var depth = 0, i = 0
        
        nodeQueue.append(root)
        outputArray.append([root.val])
        
        while !nodeQueue.isEmpty {
            
            let removedNode = nodeQueue.removeFirst()
            var outputSubArray = [Int]()
            
            if let left = removedNode.left {
                nodeQueue.append(left)
                outputSubArray.append(left.val)
            }
            
            if let right = removedNode.right {
                nodeQueue.append(right)
                outputSubArray.append(right.val)
            }
            
            if outputSubArray.count > 0 {
                outputArray.append(outputSubArray)
            }
        }
        
        return outputArray
    }
    
    static func zigzagLevelOrderUsingStack(_ root: TreeNode?) -> [[Int]] {
        
        guard let root = root else {
            return [[Int]]()
        }
        
        var outputArray = [[Int]]()
        var outputSubArray = [Int]()
        var currentStack = [TreeNode]()
        var nextLevelStack = [TreeNode]()
        var isLeftToRight = true
        
        currentStack.append(root)
        
        while !currentStack.isEmpty {
            
            let removedNode = currentStack.removeLast()
        
            outputSubArray.append(removedNode.val)
            print(removedNode.val)
            
            if isLeftToRight {
                
                if let left = removedNode.left {
                    nextLevelStack.append(left)
                }
                
                if let right = removedNode.right {
                    nextLevelStack.append(right)
                }
                
            } else {
                
                if let right = removedNode.right {
                    nextLevelStack.append(right)
                }
                
                if let left = removedNode.left {
                    nextLevelStack.append(left)
                }
            }
            
            if currentStack.isEmpty {
                outputArray.append(outputSubArray)
                outputSubArray.removeAll()
                swap(&nextLevelStack, &currentStack)
                isLeftToRight = !isLeftToRight
            }
        }
        
        return outputArray
    }
}
