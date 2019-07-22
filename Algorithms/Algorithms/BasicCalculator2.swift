//
//  BasicCalculator2.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/7/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class BasicCalculator2 {
    
    func sample() {
        //print("calculate", calculate("3+2*2"))
        print("calculate", calculate(" 3+5 / 2 "))
    }
    
    func calculate(_ s: String) -> Int {
        
        if s.count == 0 {
            return 0
        }
        var i = s.count - 1
        var result = getNumber(&i, string: s)
        
        while i > 0 {
            
            
            
            switch getOperator(i, string: s){
            
            
            case "+" :
                i -= 1
                let nextOperand = getNumber(&i, string: s)
                result = result + nextOperand
            case "-" :
                i -= 1
                let nextOperand = getNumber(&i, string: s)
                result = result - nextOperand
            case "*" :
                i -= 1
                let nextOperand = getNumber(&i, string: s)
                result = result * nextOperand
            case "/" :
                i -= 1
                let nextOperand = getNumber(&i, string: s)
                result = nextOperand / result
            default:
                i -= 1
                let nextOperand = getNumber(&i, string: s)
                result = result + nextOperand
            }
            
            
        }
        
        return result
    }
    
    func getOperator(_ index: Int, string: String) -> Character {
        return string[String.Index(utf16Offset: index, in: string)]
    }
    
    func getNumber(_ index: inout Int, string: String) -> Int {
        var number = ""
        
        while index >= 0 {
            let digit = string[String.Index(utf16Offset: index, in: string)]
            if digit.isNumber {
                number = number + String(digit)
                index -= 1
            } else if digit.isWhitespace {
                index -= 1
            } else {
                return Int(number)!
            }
        }
        return Int(number)!
    }
}
