//
//  Plus-One.swift
//  
//
//  Created by Vyacheslav Pronin on 09.11.2021.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        guard !digits.isEmpty else { return [1] }
        var arr = digits
        var index = digits.count - 1
        
        while index >= 0 {
            if arr[index] <= 8 {
                arr[index] = arr[index] + 1
                return arr
            } else {
                arr[index] = 0
            }
            index -= 1
        }
        
        arr.insert(1, at: 0)
        return arr
    }
}
