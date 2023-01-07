//
//  Gas-Station.swift
//  
//
//  Created by Vyacheslav Pronin on 08.01.2023.
//

import Foundation

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        guard gas.count != 1 else { return gas[0] >= cost[0] ? 0 : -1 }
        guard gas.reduce(0, +) >= cost.reduce(0, +), gas.count > 1 else { return -1 }
        
        var total = 0
        var curr = 0
        var index = 0
        
        for i in 0..<gas.count {
            total += (gas[i] - cost[i])
            curr += (gas[i] - cost[i])
            
            if curr < 0 {
                index = i + 1
                curr = 0
            }
        }
        
        return total >= 0 ? index : -1
    }
}
