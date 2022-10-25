//
//  How-Many-Apples-Can-You-Put-into-the-Basket.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func maxNumberOfApples(_ weight: [Int]) -> Int {
        var weight = weight.sorted()
        var result = 0
        var max = 5000
        
        for apple in weight {
            if max - apple >= 0 {
                result += 1
                max -= apple
                continue
            }
            break
        }
        
        return result
    }
}
