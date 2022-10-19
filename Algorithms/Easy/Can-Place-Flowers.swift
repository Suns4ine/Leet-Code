//
//  Can-Place-Flowers.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard flowerbed.count > 1 else { return (flowerbed[0] == 0 ? (n - 1) : n) <= 0 }
        var n = n
        var index = 0
        var count = 0
        
        if flowerbed[0] == 0 && flowerbed[1] == 0 {
            index += 1
            n -= 1
        }
        
        while index < flowerbed.count - 1 {
            count = flowerbed[index] == 0 ? count + 1 : 0
            
            n = count == 3 ? n - 1 : n
            count = count == 3 ? 1 : count
            index += 1
        }
        
        n = flowerbed[index] == 0 && count > 0 ? n - 1 : n
        return n <= 0
    }
}
