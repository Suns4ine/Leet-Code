//
//  Length-of-Last-Word.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2021.
//

import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let array = s.split(separator: " ")
        guard let last = array.last else {
            return 0
        }
        
        return last.count
    }
}
