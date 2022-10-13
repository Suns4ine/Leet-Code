//
//  Sum-of-All-Odd-Length-Subarrays.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
//

import Foundation

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        guard !arr.isEmpty else { return 0 }
        var maxDiaposon = arr.count - 1
        var prefixArr = [0]
        var result = 0
        
        for index in 1...arr.count {
            prefixArr.append(prefixArr[index - 1] + arr[index - 1])
        }
        
        while maxDiaposon > 1 {
            var minIndex = 0
            var maxIndex = maxDiaposon - 1
            
            while maxIndex < prefixArr.count {
                result += prefixArr[maxIndex] - prefixArr[minIndex]
                minIndex += 1
                maxIndex += 1
            }
            maxDiaposon -= 2
        }
        result += prefixArr.last!
        
        return result
    }
}
