//
//  Find-the-Highest-Altitude.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        guard !gain.isEmpty else { return 0 }
        var sum = 0
        var max = 0
        
        for index in 0..<gain.count {
            sum += gain[index]
            max = max < sum ? sum : max
        }
        return max
    }
    
    func largestAltitude(_ gain: [Int]) -> Int {
        guard !gain.isEmpty else { return 0 }
        var sum = 0
        var max = 0
        
        for index in 0..<gain.count {
            sum += gain[index]
            max = max < sum ? sum : max
        }
        return max
    }
}
