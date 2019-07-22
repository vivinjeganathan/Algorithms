//
//  Paranthesis.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/14/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class Paranthesis: NSObject {
    
    func test() {
        
        print(isValid2("()[]{}"))
    }
    
    func isValid(_ s: String) -> Bool {
        
        var array = [String]()
        
        for element in s {
            
            if element == "(" || element == "{" || element == "[" {
                array.append(String(element))
                continue
            }
            
            if element == ")" || element == "}" || element == "]" {
                
                var str = ""
                
                if element == ")" {
                    str = "("
                }
                if element == "]" {
                    str = "["
                }
                if element == "}" {
                    str = "{"
                }
                
                if array.count > 0 {
                    if String(array.removeLast()) != str {
                        return false
                    }
                }
                
                
            }
        }
        
        return true
    }
    
    func isValid2(_ s: String) -> Bool {
        
        var array = [String]()
        var dict = [")":"(", "]":"[", "}":"{"]
        
        for element in s {
            
            if dict.values.contains(String(element)) {
                array.append(String(element))
                continue
            } else if array.count > 0 && String(array.removeLast()) != dict[String(element)] {
                return false
            }
        }
        return array.count == 0 ? true : false
    }
}
