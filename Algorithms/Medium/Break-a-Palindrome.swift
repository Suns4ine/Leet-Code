//
//  Break-a-Palindrome.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func breakPalindrome(_ palindrome: String) -> String {
        guard palindrome.count > 1,
              let startIndex = Character("a").asciiValue,
              let endIndex = Character("z").asciiValue
        else { return "" }
        
        var palindrome = Array(palindrome)
        
    outerLoop: for index in startIndex...endIndex {
        var firstIndex = 0
        let middleIndex = palindrome.count % 2 == 0 ? (palindrome.count + 1) / 2 : palindrome.count / 2
        
        while firstIndex < palindrome.count - 1 {
            if firstIndex == middleIndex {
                firstIndex = palindrome.count % 2 == 0 ? firstIndex + 2 : firstIndex + 1
                continue
            }
            
            if let sumbAscii = palindrome[firstIndex].asciiValue,
               sumbAscii > index {
                palindrome[firstIndex] = Character(UnicodeScalar(index))
                break outerLoop
            }
            firstIndex += 1
        }
        
        if firstIndex == palindrome.count - 1 {
            palindrome[firstIndex] = index == startIndex ? Character(UnicodeScalar(index + 1)) : Character(UnicodeScalar(index - 1))
            break outerLoop
        }
    }
        
        return String(palindrome)
    }
}
