//
//  Keyboard-Row.swift
//  
//
//  Created by Vyacheslav Pronin on 24.10.2022.
//

import Foundation

class Solution {
    func findWords(_ words: [String]) -> [String] {
        guard !words.isEmpty else { return [] }
        var firstSet: Set<Character> = [ "q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
        var secondSet: Set<Character> = [ "a", "s", "d", "f", "g", "h", "j", "k", "l"]
        var thirdSet: Set<Character> = [ "z", "x", "c", "v", "b", "n", "m"]
        var result = [String]()
        
        for word in words {
            if isContains(set: firstSet, word: word) ||
                isContains(set: secondSet, word: word) ||
                isContains(set: thirdSet, word: word) {
                result.append(word)
            }
        }
        
        return result
    }
    
    func isContains(set: Set<Character>, word: String) -> Bool {
        for char in word.lowercased() {
            if !set.contains(char) {
                return false
            }
        }
        return true
    }
}
