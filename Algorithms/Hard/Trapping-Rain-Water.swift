//
//  Trapping-Rain-Water.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func trap(_ height: [Int]) -> Int {
        var result = 0
        var maxHeight = (height: -1, index: -1)
        
        for (index, value) in height.enumerated() {
            if maxHeight.height < value {
                maxHeight.height = value
                maxHeight.index = index
            }
        }
        
        var index = 0
        var max = -1
        
        while index < maxHeight.index {
            max = max < height[index] ? height[index] : max
            result += max - height[index]
            
            index += 1
        }
        
        index = height.count - 1
        max = -1
        
        while index > maxHeight.index {
            max = max < height[index] ? height[index] : max
            result += max - height[index]
            
            index -= 1
        }
        
        return result
    }
}
