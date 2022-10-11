//
//  Find-the-Index-of-the-First-Occurrence-in-a-String.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count >= needle.count else { return -1 }
        var result = -1
        let bigArr = Array(haystack)
        let smallArr = Array(needle)
        var index = 0
        
        while index < bigArr.count {
            guard bigArr.count - index + 1 > smallArr.count else { return -1 }
            var smallIndex = 0
            
            if smallArr[smallIndex] == bigArr[index] {
                result = index
                
                while index < bigArr.count &&
                        smallIndex < smallArr.count &&
                        smallArr[smallIndex] == bigArr[index] {
                    index += 1
                    smallIndex += 1
                }
                
                if smallIndex == smallArr.count {
                    return result
                } else {
                    index = result + 1
                    result = -1
                    smallIndex = 0
                }
            } else {
                index += 1
            }
        }
        
        return result
    }
}
