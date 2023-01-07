//
//  Maximum-Ice-Cream-Bars.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        let costs = costs.sorted()
        var coins = coins
        var result = 0
        
        for cost in costs {
            guard coins >= cost else { break }
            coins -= cost
            result += 1
        }
        
        return result
    }
}
