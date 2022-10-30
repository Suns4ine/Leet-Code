//
//  Find-the-Difference.swift
//  
//
//  Created by Vyacheslav Pronin on 30.10.2022.
//

import Foundation

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var result: UInt8 = 0
        
        for char in s + t {
            result = result ^ (char.asciiValue ?? 0)
        }
        
        return (97...122).contains(result) ? Character(UnicodeScalar(result)) : Character("")
    }
}
