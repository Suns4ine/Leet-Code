//
//  Check-if-the-Sentence-Is-Pangram.swift
//  
//
//  Created by Vyacheslav Pronin on 17.10.2022.
//

import Foundation

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set = Set<String.Element>()
        
        for elem in sentence {
            set.insert(elem)
        }
        return set.count == 26
    }
}
