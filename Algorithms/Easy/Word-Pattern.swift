//
//  Word-Pattern.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let words = s.split(separator: " ").map{ String($0) }
        let chars = Array(pattern)
        
        guard chars.count == words.count else { return false }
        
        var charsDict: [Character: String] = [:]
        var wordsDict: [String: Character] = [:]
        
        for i in chars.indices {
            let char = chars[i]
            let word = words[i]
            
            if charsDict[char] == nil { charsDict[char] = word }
            if wordsDict[word] == nil { wordsDict[word] = char }
            
            guard wordsDict[word] == char && charsDict[char] == word else { return false }
        }
        
        return true
    }
}
