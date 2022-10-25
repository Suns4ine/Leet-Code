//
//  Minimum-Time-to-Type-Word-Using-Special-Typewriter.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func minTimeToType(_ word: String) -> Int {
        guard !word.isEmpty else { return 0 }
        var result = 0
        var position = 97
        
        for char in word {
            let numb = Int(char.asciiValue ?? 97)
            if abs(position - numb) > 13 {
                var max = numb > position ? numb : position
                var min = numb > position ? position : numb
                
                result += 26 - max + min
            } else {
                result += abs(position - numb)
            }
            position = numb
            result += 1
        }
        
        return result
    }
}
