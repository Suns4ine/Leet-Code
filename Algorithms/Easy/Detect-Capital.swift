//
//  Detect-Capital.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        guard word.count != 1 else { return true }
        let word = Array(word)
        var isLower = ("a"..."z").contains(String(word[0]))
        var count = 0
        
        for index in 0..<word.count {
            count += ("A"..."Z").contains(String(word[index])) ? 1 : 0
        }
        
        return (isLower && count == 0) || (!isLower && (count == 1 || count == word.count))
    }
}
