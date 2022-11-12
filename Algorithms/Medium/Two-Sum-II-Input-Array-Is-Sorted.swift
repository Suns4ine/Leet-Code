//
//  Two-Sum-II-Input-Array-Is-Sorted.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        for index in 0..<numbers.count {
            let currIndex = getCurrentIndex(numbers, numb: target - numbers[index])
            if  currIndex != -1,
                index != currIndex {
                return [index + 1, currIndex + 1]
            }
        }
        return result
    }
    
    func getCurrentIndex(_ arr: [Int], numb: Int) -> Int {
        guard !arr.isEmpty else { return -1 }
        var left = 0
        var right = arr.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if arr[index] > numb {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        return right != -1 && arr[right] != numb ? -1 : right
    }
}
