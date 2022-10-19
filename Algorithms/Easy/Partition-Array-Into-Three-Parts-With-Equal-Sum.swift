//
//  Partition-Array-Into-Three-Parts-With-Equal-Sum.swift
//  
//
//  Created by Vyacheslav Pronin on 19.10.2022.
//

import Foundation

class Solution {
    func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
        var sum = arr.reduce(0, +)
        guard sum % 3 == 0 else { return false }
        var index = 0
        var count = 0
        var currentSum = arr[0]
        sum = sum / 3
        
        while count < 2 && index < arr.count - 1 {
            if currentSum == sum {
                currentSum = 0
                count += 1
            }
            
            index += 1
            currentSum += arr[index]
        }
        
        return count == 2
    }
}
