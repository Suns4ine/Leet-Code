//
//  Where-Will-the-Ball-Fall.swift
//  
//
//  Created by Vyacheslav Pronin on 01.11.2022.
//

import Foundation

class Solution {
    func findBall(_ grid: [[Int]]) -> [Int] {
        guard !grid.isEmpty else { return [] }
        var result = [Int]()
        
        for i in 0..<grid[0].count {
            var index = i
            for j in 0..<grid.count {
                var numb = grid[j][index]
                index += grid[j][index]
                
                guard index >= 0 && index <= grid[j].count - 1,
                      numb == grid[j][index]
                else { index = -1; break }
            }
            result.append(index)
        }
        
        return result
    }
}
