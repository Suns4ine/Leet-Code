//
//  Find-Nearest-Point-That-Has-the-Same-X-or-Y-Coordinate.swift
//  
//
//  Created by Vyacheslav Pronin on 08.01.2023.
//

import Foundation

class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var result = Int.max
        var diff = Int.max
        
        for i in 0..<points.count {
            var currDiff = Int.max
            
            if x == points[i].first! {
                currDiff = abs(points[i].last! - y)
            } else if y == points[i].last {
                currDiff = abs(points[i].first! - x)
            } else {
                continue
            }
            
            result = currDiff < diff ? i : result
            diff = currDiff < diff ? currDiff : diff
        }
        
        return result == Int.max ? -1 : result
    }
}
