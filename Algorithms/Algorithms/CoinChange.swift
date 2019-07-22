//
//  CoinChange.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/7/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class CoinChange: NSObject {

    func sample()  {
        
        print(coinChange([186,419,83,408], 6249))
    }
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        
        let coins : [Int] = coins.sorted().reversed()
        var countArray = [Int]()
        var answerArray = [Int]()
        
        for element in coins {
            countArray.append(amount/element)
        }
        var answerFound = false
        permute(array: coins, count: &countArray, level: 0, answer: &answerArray, sum: amount, answerFound: &answerFound)
        return answerFound ? answerArray.count : -1
    }
    
    func permute(array: [Int], count: inout [Int], level: Int, answer: inout [Int], sum: Int, answerFound: inout Bool) {
        
        let calcSum = (answer.reduce(0, { $0 + $1 } ))
        
        if calcSum >= sum {
            if calcSum == sum {
                answerFound = true
                print(answer)
            }
            return
        }
        
        var i = 0
        
        while i < array.count {
            
            if answerFound {
                break
            }
            
            if count[i] == 0 {
                i += 1
                continue
            }
            
            count[i] -= 1
            answer.append(array[i])
            permute(array: array, count: &count, level: level+1, answer: &answer, sum: sum, answerFound: &answerFound)
            if !answerFound {
                _ = answer.popLast()
            } else {
                break
            }
            count[i] += 1
            i += 1
        }
    }
}
