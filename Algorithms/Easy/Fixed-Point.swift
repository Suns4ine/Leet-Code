//
//  Fixed-Point.swift
//  
//
//  Created by Vyacheslav Pronin on 14.10.2022.
//

import Foundation

class Solution {
    func fixedPoint(_ arr: [Int]) -> Int {
        guard !arr.isEmpty else { return -1 }
        var result = -1
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if arr[index] >= index {
                result = arr[index] == index ? index : result
                right = index
            } else {
                left = index + 1
            }
        }
        
        return result
    }
}
