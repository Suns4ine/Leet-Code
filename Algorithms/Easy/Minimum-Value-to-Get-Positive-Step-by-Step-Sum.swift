//
//  Minimum-Value-to-Get-Positive-Step-by-Step-Sum.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var result = 0
        var arr = [0]
        
        for index in 1...nums.count {
            arr.append(arr[index - 1] + nums[index - 1])
            if result > arr.last! {
                result = arr.last!
            }
        }
        return result == 0 ? 1 : abs(result) + 1
    }
}
