//
//  Sort-Array-By-Parity.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        var max = nums.count - 1
        var index = 0
        
        while index < max {
            if nums[index] % 2 != 0 {
                nums.append(nums[index])
                nums.remove(at: index)
                max -= 1
            } else {
                index += 1
            }
        }
        
        return nums
    }
    
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var evenArr = [Int]()
        var notEvenArr = [Int]()
        
        for elem in nums {
            if elem % 2 == 0 {
                evenArr.append(elem)
            } else {
                notEvenArr.append(elem)
            }
        }
        
        return evenArr + notEvenArr
    }
}
