//
//  IsomorphicStrings.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 5/31/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class IsomorphicStrings: NSObject {
    
    static func isIsomorphic(_ s: String, _ t: String) -> Bool {
        
        var map = [Character: Character]()
        var i = 0
        
        while i < s.count {
            
            let index = String.Index(encodedOffset: i)
            
            if map[s[index]] != nil {
                if map[s[index]] != t[index] {
                    return false
                }
            } else {
                map[s[index]] = t[index]
            }
            i = i + 1
        }
        
        map.removeAll()
        i = 0
        
        while i < s.count {
            
            let index = String.Index(encodedOffset: i)
            
            if map[t[index]] != nil {
                if map[t[index]] != s[index] {
                    return false
                }
            } else {
                map[t[index]] = s[index]
            }
            i = i + 1
        }
        
        return true
    }
}
