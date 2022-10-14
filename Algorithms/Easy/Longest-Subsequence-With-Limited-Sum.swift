//
//  Longest-Subsequence-With-Limited-Sum.swift
//  
//
//  Created by Vyacheslav Pronin on 14.10.2022.
//

import Foundation

class Solution {
    func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
        let nums = nums.sorted()
        var arr = [0]
        var result = [Int]()
        var i = 0
        
        for index in 1...nums.count {
            arr.append(arr[index - 1] + nums[index - 1])
        }
        
        while i < queries.count {
            result.append(getIndex(arr, numb: queries[i]))
            i += 1
        }
        
        return result.isEmpty ? [0] : result
    }
    
    func getIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            
            if array[index] > numb {
                right = index - 1
            } else {
                left = index + 1
            }
        }
        
        return right
    }
}
