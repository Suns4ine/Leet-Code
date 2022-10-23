//
//  Set-Mismatch.swift
//  
//
//  Created by Vyacheslav Pronin on 23.10.2022.
//

import Foundation

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var nums = nums.sorted()
        var res = [Int]()
        var numb = 1
        var set: Set<Int> = []
        
        for (index, numb) in nums.enumerated() {
            if set.contains(numb) {
                res.append(numb)
                nums.remove(at: index)
                break
            }
            set.insert(numb)
        }
        
        for n in nums {
            if numb != n {
                res.append(numb)
                break
            }
            
            numb += 1
        }
        
        if res.count < 2 {
            res.append(nums.first != 1 ? 1 : nums.last! + 1)
        }
        
        return res
    }
}
