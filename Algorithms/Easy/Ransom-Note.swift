//
//  Ransom-Note.swift
//  
//
//  Created by Vyacheslav Pronin on 18.11.2022.
//

import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomNote = Array(ransomNote)
        var magazine = Array(magazine)
        
        for elem in ransomNote {
            guard let index = magazine.firstIndex(of: elem) else { return false }
            magazine.remove(at: index)
            ransomNote.removeFirst()
        }
        
        return ransomNote.isEmpty
    }
}
