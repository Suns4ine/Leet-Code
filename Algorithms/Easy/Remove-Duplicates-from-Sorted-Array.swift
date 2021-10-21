//
//  Remove-Duplicates-from-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count }
    var numb = nums[0]
    var array: [Int] = [numb]
    
    for index in 1...nums.count - 1 {
        if numb != nums[index] {
            numb = nums[index]
            array.append(nums[index])
        }
    }

    nums = array
    return array.count
    }
}
