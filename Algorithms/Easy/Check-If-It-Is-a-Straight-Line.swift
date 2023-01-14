//
//  Check-If-It-Is-a-Straight-Line.swift
//  
//
//  Created by Vyacheslav Pronin on 10.01.2023.
//

import Foundation

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        var diffX = coordinates[1][0] - coordinates[0][0]
        var diffY = coordinates[1][1] - coordinates[0][1]
        
        for i in 2..<coordinates.count {
            var currDiffX = coordinates[i][0] - coordinates[i - 1][0]
            var currDiffY = coordinates[i][1] - coordinates[i - 1][1]
            
            guard (currDiffX * diffY) == (currDiffY * diffX) else { return false }
        }
        
        return true
    }
}
