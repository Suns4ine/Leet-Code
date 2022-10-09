//
//  Find-Smallest-Letter-Greater-Than-Target.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        guard target < letters.last! else { return letters[0] }
        
        var left = 0
        var right = letters.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if target < letters[index] {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return letters[left]
    }
}
