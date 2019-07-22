//
//  Graph.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/30/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class Node<T> {
    var value: T!
    var leftNode: Node<T>?
    var rightNode: Node<T>?
    
    init(value: T) {
        self.value = value
    }
    
}
class Graph<T>: NSObject {
    
    var rootNode: Node<T>
    
    init(rootNode: Node<T>) {
        self.rootNode = rootNode
        super.init()
    }
    
    func breadthFirstTraversal() -> [T] {
        
        var elements = [T]()
        var nodeStack = [Node<T>]()
        nodeStack.append(rootNode)
        elements.append(rootNode.value)
        
        while nodeStack.count > 0 {
            
            let currentNode = nodeStack.removeFirst()
            
            if let leftNode = currentNode.leftNode {
                nodeStack.append(leftNode)
                elements.append(leftNode.value)
            }
            
            if let rightNode = currentNode.rightNode {
                nodeStack.append(rightNode)
                elements.append(rightNode.value)
            }
        }
        
        return elements
    }
    
    func depthFirstTraversal() -> [Int] {
        
        var nodes = [Int]()
        dfs(node: rootNode, array: &nodes)
        return nodes
    }
    
    func dfs(node: Node<T>?, array:inout [Int]) {
        
        guard let node = node else {
            return
        }
        
        print(node.value)
        dfs(node: node.leftNode, array: &array)
        dfs(node: node.rightNode, array: &array)
    }
    
    static func sampleGraph() -> Graph<Int> {
        
        let node = Node<Int>(value: 10)
        let node1 = Node<Int>(value: 1)
        let node2 = Node<Int>(value: 2)
        let node3 = Node<Int>(value: 3)
        let node4 = Node<Int>(value: 4)
        let node5 = Node<Int>(value: 5)

        node.leftNode = node1
        node.rightNode = node2
        
        node1.leftNode = node3
        node1.rightNode = node4
        
        node2.leftNode = node5
        
        return Graph<Int>(rootNode: node)
    }
    
    static func sampleGraphStringNodes() -> Graph<String> {
        
        let node = Node<String>(value: "Z")
        let node1 = Node<String>(value: "A")
        let node2 = Node<String>(value: "B")
        let node3 = Node<String>(value: "C")
        let node4 = Node<String>(value: "D")
        let node5 = Node<String>(value: "E")
        
        node.leftNode = node1
        node.rightNode = node2
        
        node1.leftNode = node3
        node1.rightNode = node4
        
        node2.leftNode = node5
        
        return Graph<String>(rootNode: node)
    }
}

class Queue<T> {
    
    var queue = [T]()
    
    func enqueue(element: T) {
        queue.append(element)
    }
    
    func dequeue() -> T {
        return queue.removeFirst()
    }
}
