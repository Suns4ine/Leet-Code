//
//  Binary-Search.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return -1 }
        var left = 0
        var right = nums.count - 1

        while left < right {
            let numb = (left + right) / 2
            if nums[numb] >= target {
                right = numb
            } else {
                left = numb + 1
            }
        }

        return nums[left] == target ? left : -1
    }
}
