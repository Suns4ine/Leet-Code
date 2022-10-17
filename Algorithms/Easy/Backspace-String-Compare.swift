//
//  Backspace-String-Compare.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var s = Array(s)
        var t = Array(t)
        var n = 0

        var leftIndex = s.count - 1
        var rightIndex = t.count - 1


        while leftIndex >= 0 {
            if s[leftIndex] == "#" {
                s.remove(at: leftIndex)
                n += 1
            } else if n > 0 {
                n -= 1
                s.remove(at: leftIndex)
            }
            
            leftIndex -= 1
        }

        n = 0
        while rightIndex >= 0 {
            if t[rightIndex] == "#" {
                t.remove(at: rightIndex)
                n += 1
            } else if n > 0 {
                n -= 1
                t.remove(at: rightIndex)
            }
            
            rightIndex -= 1
        }
        
        return s == t
    }
    
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        var leftCount = 0
        var rightCount = 0

        var leftIndex = s.count - 1
        var rightIndex = t.count - 1

        while leftIndex >= 0 || rightIndex >= 0 {
            
            while leftIndex >= 0 {
                if s[leftIndex] == "#" { leftCount += 1; leftIndex -= 1 }
                else if leftCount > 0 { leftCount -= 1; leftIndex -= 1 }
                else { break }
            }
            
            while rightIndex >= 0 {
                if t[rightIndex] == "#" { rightCount += 1; rightIndex -= 1 }
                else if rightCount > 0 { rightCount -= 1; rightIndex -= 1 }
                else { break }
            }
            
            if (leftIndex >= 0 && rightIndex >= 0 && s[leftIndex] != t[rightIndex]) { return false }
            if (leftIndex >= 0) != (rightIndex >= 0) { return false }
            
            leftIndex -= 1
            rightIndex -= 1
        }
        
        return true
    }
}
