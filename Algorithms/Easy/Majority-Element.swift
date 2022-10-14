//
//  Majority-Element.swift
//  
//
//  Created by Vyacheslav Pronin on 14.10.2022.
//

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        var result = 0
        var max = 0
        
        for elem in nums {
            if dict[elem] == nil {
                dict[elem] = 0
            }
            dict[elem]! += 1
        }
        
        for key in dict.keys {
            if let val = dict[key],
               val > max {
                max = val
                result = key
            }
        }
        
        return result
    }
}
