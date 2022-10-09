//
//  Squares-of-a-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var arr = [Int]()
        
        for elem in nums {
            arr.insert(elem * elem, at: getIndex(arr, numb: elem * elem))
        }
        
        return arr
    }
}

func getIndex(_ array: [Int], numb: Int) -> Int {
    var left = 0
    var right = array.count - 1
    
    while left <= right {
        let index = (left + right) / 2
        
        if array[index] >= numb {
            right = index - 1
        } else {
            left = index + 1
        }
    }
    
    return left
}
