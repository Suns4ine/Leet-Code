//
//  Minimum-Health-to-Beat-Game.swift
//  
//
//  Created by Vyacheslav Pronin on 08.01.2023.
//

import Foundation

class Solution {
    func minimumHealth(_ damage: [Int], _ armor: Int) -> Int {
        guard armor > 0 else { return damage.reduce(1, +) }
        var result = 1
        var maxDamage = 0
        
        for d in damage {
            result += d
            maxDamage = max(d, maxDamage)
        }
        
        result -= armor >= maxDamage ? maxDamage : armor
        
        return result
    }
}
