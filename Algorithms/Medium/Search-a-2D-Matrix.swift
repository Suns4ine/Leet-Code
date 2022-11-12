//
//  Search-a-2D-Matrix.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for arr in matrix {
            guard arr.last ?? (target - 1) >= target else { continue }
            guard arr[getCurrentIndex(arr, numb: target)] != target else { return true }
        }
        return false
    }
    
    func getCurrentIndex(_ arr: [Int], numb: Int) -> Int {
        guard !arr.isEmpty else { return -1 }
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if arr[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        return left
    }
}
