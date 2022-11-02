//
//  Peak-Index-in-a-Mountain-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 02.11.2022.
//

import Foundation

class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        guard arr.count > 1 else { return 0 }
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if arr[index] < arr[index + 1] {
                left = index + 1
            } else {
                right = index
                
            }
        }
        
        return left
    }
}
