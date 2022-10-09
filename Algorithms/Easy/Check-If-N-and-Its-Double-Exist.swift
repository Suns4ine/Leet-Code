//
//  Check-If-N-and-Its-Double-Exist.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        let arr = arr.sorted()
        
        for index in 0..<arr.count {
            if isSquare(arr, numb: arr[index] * 2, index: index) {
                return true
            }
        }
        
        return false
    }
    
    func isSquare(_ array: [Int], numb: Int, index: Int) -> Bool {
        guard !array.isEmpty else { return false }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] == numb && left != index
    }
}
