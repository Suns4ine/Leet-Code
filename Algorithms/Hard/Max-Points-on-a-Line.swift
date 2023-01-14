//
//  Max-Points-on-a-Line.swift
//  
//
//  Created by Vyacheslav Pronin on 08.01.2023.
//

import Foundation

class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        guard points.count > 1 else { return 1 }
        var result = 2
        
        for i in 0..<points.count {
            var dict: [Double: Int] = [:]
            
            for j in 0..<points.count {
                if i != j {
                    dict[atan2(Double(points[j][1] - points[i][1]), Double(points[j][0] - points[i][0])), default: 0] += 1
                }
            }
            
            var maxValue = 0
            for value in dict.values {
                maxValue = max(maxValue, value)
            }
            
            result = max(result, maxValue + 1)
        }
        
        return result
    }
}
