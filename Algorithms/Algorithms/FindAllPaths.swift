//
//  FindAllPaths.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class FindAllPaths: NSObject {
    
    static var answersArray = [[Int]]()
    func test() {
        
        var ansArray = [Int]()
        let graph = [[1,2], [3], [3], []]
        //findAllPaths(graph: graph, node: 0, answerArray: &ansArray, destination: (graph.count - 1))
        findAllPaths(graph: graph, node: 0, answerArray: &ansArray)
        
        print(FindAllPaths.answersArray)
    }
    
    func findAllPaths(graph: [[Int]], node: Int, answerArray: inout [Int], destination: Int) {
        
        if node == destination {
            answerArray.append(node)
            print(answerArray)
            answerArray.removeLast()
            return
        }
        
        if graph[node].isEmpty {
            return
        }
        
        for subNode in graph[node] {
            
            if answerArray.contains(subNode) {
                return
            }
            
            answerArray.append(node)
            findAllPaths(graph: graph, node: subNode, answerArray: &answerArray, destination: destination)
            answerArray.removeLast()
        }
    }
    
    func findAllPaths(graph: [[Int]], node: Int, answerArray: inout [Int]) {
        
        if node == graph.count - 1 {
            answerArray.append(node)
            //print(answerArray)
            FindAllPaths.answersArray.append(answerArray)
            answerArray.removeLast()
            return
        }
        
        if graph[node].isEmpty {
            return
        }
        
        for subNode in graph[node] {
            
            if answerArray.contains(subNode) {
                return
            }
            
            answerArray.append(node)
            findAllPaths(graph: graph, node: subNode, answerArray: &answerArray)
            answerArray.removeLast()
        }
    }
}
