//
//  Reverse-String.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        for index in 0..<s.count / 2 {
            (s[s.count - 1 - index], s[index]) = (s[index], s[s.count - 1 - index])
        }
    }
}
