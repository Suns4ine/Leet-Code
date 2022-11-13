//
//  Sort-Integers-by-The-Number-of-1-Bits.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        return arr
            .sorted()
            .sorted(by: { $0.nonzeroBitCount < $1.nonzeroBitCount })
    }
}
