//
//  Find-the-Distance-Value-Between-Two-Arrays.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var result = 0
        let arr2 = arr2.sorted()
        
        for numb in arr1 {
            if isValid(array: arr2, numb: numb, from: numb - d, to: numb + d) {
                result += 1
            }
        }
        
        return result
    }
    
    func isValid(array: [Int], numb: Int, from: Int, to: Int) -> Bool {
        guard !array.isEmpty else { return true }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            if array[index] >= from && array[index] <= to {
                return false
            }
            
            if array[index] >= from {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        
        return true
    }
}
