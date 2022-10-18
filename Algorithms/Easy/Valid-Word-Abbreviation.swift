//
//  Valid-Word-Abbreviation.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

class Solution {
    func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
        let word = Array(word)
        let abbr = Array(abbr)
        
        var wordIndex = 0
        var abbrIndex = 0
        
        while abbrIndex < abbr.count {
            guard wordIndex < word.count else { return false }
            var numb = ""
            
            if abbr[abbrIndex].asciiValue! >= 49 && abbr[abbrIndex].asciiValue! <= 57 {
                while   abbrIndex < abbr.count &&
                            abbr[abbrIndex].asciiValue! >= 48 &&
                            abbr[abbrIndex].asciiValue! <= 57 {
                    numb =  numb + String(abbr[abbrIndex])
                    abbrIndex += 1
                }
                wordIndex += Int(numb)!
                continue
            }
            
            guard abbr[abbrIndex] == word[wordIndex] else { return false }
            abbrIndex += 1
            wordIndex += 1
        }
        
        return abbrIndex == abbr.count && wordIndex == word.count
    }
}
