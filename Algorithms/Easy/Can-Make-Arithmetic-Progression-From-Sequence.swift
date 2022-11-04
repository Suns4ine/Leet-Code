//
//  Can-Make-Arithmetic-Progression-From-Sequence.swift
//  
//
//  Created by Vyacheslav Pronin on 04.11.2022.
//

import Foundation

class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        guard arr.count > 2 else { return true }
        var arr = arr.sorted()
        var diff = arr[0] - arr[1]
        
        for i in 2..<arr.count {
            guard diff == (arr[i - 1] - arr[i]) else { return false }
        }
        
        return true
    }
}
