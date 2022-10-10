//
//  Kth-Missing-Positive-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
//

import Foundation

class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var k = k
        var numb = 0
        
        for elem in arr {
            if elem - (numb + 1) >= k {
                return numb + k
            }
            
            k = k - (elem - (numb + 1))
            numb = elem
        }
        
        return numb + k
    }
}
