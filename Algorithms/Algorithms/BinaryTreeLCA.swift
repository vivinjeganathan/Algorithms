//
//  BinaryTreeLCA.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/2/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class BinaryTreeLCA: NSObject {
    
    var lcaNode: TreeNode?
    
    static func testBinaryTreeLCA() {
        
        let node = TreeNode(3)
        let node1 = TreeNode(5)
        let node2 = TreeNode(1)
        let node3 = TreeNode(6)
        let node4 = TreeNode(2)
        let node5 = TreeNode(0)
        let node6 = TreeNode(8)
        let node7 = TreeNode(7)
        let node8 = TreeNode(4)
        
        node.left = node1
        node.right = node2
        
        node1.left = node3
        node1.right = node4
        
        node2.left = node5
        node2.right = node6
        
        node4.left = node7
        node4.right = node8
        
        let lca = BinaryTreeLCA()
        
        print(lca.lowestCommonAncestor(root: node, p: 5, q: 4))
        print(lca.lcaNode?.val)
    }
    
    func lowestCommonAncestor(root: TreeNode?, p: Int, q:Int) -> Bool {
        
        guard let root = root else {
            return false
        }
       
        let left = lowestCommonAncestor(root: root.left, p: p, q: q) ? 1 : 0
        let right = lowestCommonAncestor(root: root.right, p: p, q: q) ? 1 : 0
        let mid = (root.val == p || root.val == q) ? 1 : 0
        
        if left + right + mid >= 2 {
            lcaNode = root
        }
        
        return left + mid + right > 0
    }
    
    func findNode(root: TreeNode?, value: Int) -> Bool {
        
        guard let root = root else {
            return false
        }
        
        if root.val == value {
            print("value found ", value)
            return true
        }
        
        if findNode(root: root.left, value: value) {
            return true
        }
        return findNode(root: root.right, value: value)
    }
}
