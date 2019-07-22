//
//  StringCompress.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/6/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class StringCompress: NSObject {

    func test() {
        //var array : [Character] = ["a","a","b","b","c","c","c"]
        //var array : [Character] = ["a"]
        //var array : [Character] = []
        //var array : [Character] = ["a","b","b"]
        //var array : [Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
        //var array : [Character] = ["a","a","a","b","b","a","a"]
        //var array : [Character] = ["a","a","a","a","a","b"]
        var array : [Character] = ["a","a","a","a","b","a"]
        print(compress(&array))
    }
    
    func compress(_ chars: inout [Character]) -> Int {
        
        var currentCharacter = chars.first
        var count = 1, i = 1, j = 1
        
        while i < chars.count {
            
            if currentCharacter == chars[i] {
                count += 1
            } else {
                chars[j-1] = currentCharacter ?? Character("")
                
                if count > 1 {
                    
                    if count > 9 {
                        chars[j] = Character("\(count/10)")
                        j += 1
                        chars[j] = Character("\(count%10)")
                        j += 2
                    } else {
                        
                        chars[j] = Character("\(count)")
                        j += 2
                    }
                    
                } else {
                    j += 1
                }
                count = 1
            }
            
            currentCharacter = chars[i]
            i += 1
        }
        
        chars[j-1] = currentCharacter ?? Character("")
        
        if count > 1 {
             
            if count > 9 {
                chars[j] = Character("\(count/10)")
                j += 1
                chars[j] = Character("\(count%10)")
            } else {
                chars[j] = Character("\(count)")
            }
        } else {
            j = j - 1
            chars[j] = currentCharacter ?? Character("")
        }
        
        chars = Array(chars.prefix(through: min(j,chars.count-1)))
        
        return chars.count
    }
}
