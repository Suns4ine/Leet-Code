//
//  Fair-Candy-Swap.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
        var array = [Int]()
        let bobSizes = bobSizes.sorted()
        let diff = abs(aliceSizes.reduce(0, +) - bobSizes.reduce(0, +)) / 2
        let isBigger = aliceSizes.reduce(0, +) >= bobSizes.reduce(0, +)
        
        for numb in aliceSizes {
            let count = isBigger ? numb - diff : numb + diff
            
            let elem = isContainsElement(bobSizes, numb: count)
            if elem > 0 {
                array = [numb , elem]
                break
            }
        }
        
        return array
    }
    
    
    func isContainsElement(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return -1 }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] == numb ? array[left] : -1
    }
}
