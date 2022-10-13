//
//  Maximum-Sum-of-an-Hourglass.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func maxSum(_ grid: [[Int]]) -> Int {
        guard grid.count > 2 else { return 0 }
        var result = 0
        
        for index in 2..<grid.count {
            var smallIndex = 2
            
            while smallIndex < grid[index].count {
                let sumUp = grid[index - 2][smallIndex - 2] + grid[index - 2][smallIndex - 1] + grid[index - 2][smallIndex]
                let middle = grid[index - 1][smallIndex - 1]
                let sumDown = grid[index][smallIndex - 2] + grid[index][smallIndex - 1] + grid[index][smallIndex]
                
                result = max(result, (sumUp + middle + sumDown))
                smallIndex += 1
            }
            
        }
        
        return result
    }
}
