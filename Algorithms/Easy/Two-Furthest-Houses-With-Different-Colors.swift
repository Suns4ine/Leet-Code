//
//  Two-Furthest-Houses-With-Different-Colors.swift
//  
//
//  Created by Vyacheslav Pronin on 27.10.2022.
//

import Foundation

class Solution {
    func maxDistance(_ colors: [Int]) -> Int {
        var left = 0
        var right = colors.count - 1
        
        while colors[0] == colors[right] {
            right -= 1
        }
        
        while colors[left] == colors[colors.count - 1] {
            left += 1
        }
        
        return max(right - 0, colors.count - 1 - left)
    }
}
