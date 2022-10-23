//
//  Add-Strings.swift
//  
//
//  Created by Vyacheslav Pronin on 23.10.2022.
//

import Foundation

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let num1 = num1.compactMap { Int(String($0)) }
        let num2 = num2.compactMap { Int(String($0)) }
        
        var bigArr = num1.count >= num2.count ? Array(num1) : Array(num2)
        var smallArr = num1.count < num2.count ? Array(num1) : Array(num2)
        
        var isMore = false
        var bigIndex = bigArr.count - 1
        var smallIndex = smallArr.count - 1
        
        while bigIndex >= 0 {
            
            if isMore {
                bigArr[bigIndex] = bigArr[bigIndex] + 1
                isMore = false
            }
            
            if smallIndex >= 0 {
                isMore = (bigArr[bigIndex] + smallArr[smallIndex]) > 9
                bigArr[bigIndex] = (bigArr[bigIndex] + smallArr[smallIndex]) % 10
            } else {
                isMore = bigArr[bigIndex] > 9
                bigArr[bigIndex] = bigArr[bigIndex] % 10
            }
            
            bigIndex -= 1
            smallIndex -= 1
        }
        
        if isMore {
            bigArr.insert(1, at: 0)
        }
        
        return bigArr.compactMap{ String($0) }.joined()
    }
}
