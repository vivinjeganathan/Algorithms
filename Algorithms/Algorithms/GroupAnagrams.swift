//
//  GroupAnagrams.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/15/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class GroupAnagrams: NSObject {
    
    func test() {
        print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
    }
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var outputArray = [[String]]()
        //let strMap = createCharacterMap(strs: strs)
        var i = 1, j = 0
        
        if strs.count > 0 {
            outputArray.append([strs[0]])
        }
        
        while i < strs.count {
            
            var isInserted = false
            
            while j < outputArray.count {
                
                //if isAnagram(str1: outputArray[j][0], str2: strs[i], allStringsMap: strMap) {
                if isAnagram1(str1: outputArray[j][0], str2: strs[i]) {
                    isInserted = true
                    outputArray[j].append(strs[i])
                    break
                }
                
                j = j + 1
            }
            
            if !isInserted {
                outputArray.append([strs[i]])
            }
            
            i = i + 1
            j = 0
        }
        
        return outputArray
    }
    
    func createCharacterMap(strs: [String]) -> [String: [Character: Int]] {
        
        var allStringsMap = [String: [Character: Int]]()
        
        for string in strs {
            
            var strMap = [Character: Int]()
            
            for element in string {
                
                strMap[element] = strMap[element] == nil ? 1 : strMap[element]! + 1
            }
            
            allStringsMap[string] = strMap
        }
        
        return allStringsMap
    }
    
    func isAnagram(str1: String, str2: String, allStringsMap: [String: [Character: Int]]) -> Bool {
        
        if str1.count != str2.count {
            return false
        }
        
        for element in str1 {
            let count1 = allStringsMap[str1]?[element] ?? 0
            let count2 = allStringsMap[str2]?[element] ?? 0
            
            if count1 != count2 {
                return false
            }
        }
        
        return true
    }
    
    func isAnagram1(str1: String, str2: String) -> Bool {
        
        if str1.count != str2.count {
            return false
        }
        
        if str1.sorted() == str2.sorted() {
            return true
        }
        
        return false
    }
}
