//
//  GenerateParanthesis.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/6/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class GenerateParanthesis: NSObject {
    
    func sample() {
        
//        let array = ["(",")"];
//        var count = [3,3]
//        var answer = Array(repeating: "", count: 6)
//        var outputArray = [String]()
//
//        permute(array: array, count: &count, level: 0, answer: &answer, outputArray: &outputArray)
//        print(outputArray)
        
        print(generateParenthesis(3))
    }
    
    func generateParenthesis(_ n: Int) -> [String] {
        
        let array = ["(",")"];
        var count = [n,n]
        var answer = Array(repeating: "", count: 2*n)
        var outputArray = [String]()
        
        permute(array: array, count: &count, level: 0, answer: &answer, outputArray: &outputArray, n: n)
        return outputArray
    }
    
    func permute(array: [String], count: inout [Int], level: Int, answer: inout [String], outputArray: inout [String], n: Int) {
        
        if level == 6 {
            if isValid(array: answer) {
                outputArray.append(answer.joined())
                print(answer)
            }
            return
        }
        
        var i = 0
        while i < array.count {
            
            if count[i] == 0 {
                i += 1
                continue
            }
            
            count[i] -= 1
            answer[level] = array[i]
            if (answer.prefix(level).filter { $0 == "(" }).count >= (answer.prefix(level).filter { $0 == ")" }).count {
                permute(array: array, count: &count, level: level + 1, answer: &answer, outputArray: &outputArray, n: n)
            }
            count[i] += 1
            i += 1
        }
    }
    
    func isValid(array: [String]) -> Bool {
        
        var stack = [String]()
        
        for element in array {
            if element == "(" {
                stack.append(element)
            } else {
                if stack.popLast() == nil {
                    return false
                }
            }
        }
        
        return true
    }
}
