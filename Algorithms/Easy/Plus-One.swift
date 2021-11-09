//
//  Plus-One.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2021.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var resultArray = digits
        var count = digits.count - 1
        
        while count >= 0 {
            if resultArray[count] == 9 {
                resultArray[count] = 0
                if count == 0 {
                    resultArray.insert(1, at: 0)
                    break
                }
            } else {
                resultArray[count] += 1
                break
            }
            count -= 1
        }
    
    return resultArray
    }
}
