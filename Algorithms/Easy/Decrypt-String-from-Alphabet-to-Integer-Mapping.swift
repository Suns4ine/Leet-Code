//
//  Decrypt-String-from-Alphabet-to-Integer-Mapping.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2022.
//

import Foundation

class Solution {
    func freqAlphabets(_ s: String) -> String {
        var result = ""
        var s = Array(s)
        var index = s.count - 1
        
        while index >= 0 {
            var numb = 96
            if s[index] == "#" {
                numb += (Int(String(s[index - 2]) + String(s[index - 1])) ?? 0)
                index -= 2
            } else {
                numb += (Int(String(s[index])) ?? 0)
            }
            
            var unicode = UnicodeScalar(numb) ?? .init(0)
            
            result = String(Character(unicode)) + result
            index -= 1
        }
        
        return result
    }
}
