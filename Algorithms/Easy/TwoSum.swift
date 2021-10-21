//
//  TwoSum.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var array: [Int] = []
        outerloop: for i in 0...nums.count - 1 {
            if i < nums.count - 1 {
                for k in (i + 1)...nums.count - 1 {
                    if nums[i] + nums[k] == target {
                        array = [i, k]
                        break outerloop
                    }
                }
            }
        }
    return array
    }
}
