//
//  Break-a-Palindrome.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func breakPalindrome(_ palindrome: String) -> String {
        guard palindrome.count > 1 else { return "" }
        var palindrome = Array(palindrome)
        let middleIndex = palindrome.count % 2 == 0 ? (palindrome.count + 1) / 2 : palindrome.count / 2
        var firstIndex = 0
        
        while firstIndex < palindrome.count - 1 {
            if firstIndex == middleIndex {
                firstIndex = palindrome.count % 2 == 0 ? firstIndex + 2 : firstIndex + 1
                continue
            }
            
            if palindrome[firstIndex] > "a" {
                palindrome[firstIndex] = "a"
                break
            }
            firstIndex += 1
        }
        
        if firstIndex == palindrome.count - 1 {
            palindrome[firstIndex] = palindrome[firstIndex] == "a" ? "b" : "a"
        }
        
        return String(palindrome)
    }
}
