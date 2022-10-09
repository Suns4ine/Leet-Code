//
//  Count-Negative-Numbers-in-a-Sorted-Matrix.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var result = 0
        
        for arr in grid {
            result += countNegativeNumber(arr)
        }
        
        return result
    }
    
    func countNegativeNumber(_ array: [Int]) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] < 0 {
                right = index
            } else {
                left = index + 1
            }
        }
        
        if left == 0 && array[left] >= 0 {
            return array.count - 1
        }
        
        left = array[left] < 0 ? left : array.count
        return array.count - left
    }
}
