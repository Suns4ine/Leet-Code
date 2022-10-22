//
//  Line-Reflection.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

class Solution {
    func isReflected(_ points: [[Int]]) -> Bool {
        var min = Int.max
        var max = Int.min
        var set: Set<[Int]> = []
        
        for point in points {
            max = point[0] > max ? point[0] : max
            min = point[0] < min ? point[0] : min
            set.insert(point)
        }
        
        var line = max + min
        
        for point in points {
            if !set.contains([line - point[0], point[1]]) {
                return false
            }
        }
        
        return true
    }
}
