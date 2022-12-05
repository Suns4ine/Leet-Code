//
//  Single-Row-Keyboard.swift
//  
//
//  Created by Vyacheslav Pronin on 05.12.2022.
//

import Foundation

class Solution {
    func calculateTime(_ keyboard: String, _ word: String) -> Int {
        var result = 0
        var dict = getCurrentDict(keyboard)
        var lastPosition = 0
        
        for char in word {
            guard let newPosition = dict[char] else { continue }
            result += abs(newPosition - lastPosition)
            lastPosition = newPosition
        }
        
        return result
    }
    
    func getCurrentDict(_ str: String) -> [Character: Int] {
        var dict: [Character: Int] = [:]
        
        for (index, char) in str.enumerated() {
            dict[char, default: 0] = index
        }
        
        return dict
    }
}
