//
//  Multiply-Strings.swift
//  
//
//  Created by Vyacheslav Pronin on 17.11.2022.
//

import Foundation

class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        var num1 = Array(num1).compactMap{ Int(String($0)) }
        var num2 = Array(num2).compactMap{ Int(String($0)) }
        
        guard num1.first ?? 0 != 0 && num2.first ?? 0 != 0 else { return "0" }
        
        var result = [Int]()
        var i = num1.count - 1
        var j = num2.count - 1
        var countI = 0
        
        while i >= 0 {
            var arrI = Array(repeating: 0, count: countI)
            
            j = num2.count - 1
            var countJ = 0
            
            while j >= 0 {
                var arrJ = Array(repeating: 0, count: countJ)
                arrJ = (num2[j] * num1[i]).digits() + arrJ + arrI
                result = sumArrayNumbersReverse(result, arrJ)
                
                j -= 1
                countJ += 1
            }
            
            i -= 1
            countI += 1
        }
        
        return result.map { String($0) }.joined()
    }
    
    func sumArrayNumbersReverse(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var arrMax = arr1.count > arr2.count ? arr1 : arr2
        let arrMin = arr1.count > arr2.count ? arr2 : arr1
        var indexMax = arrMax.count - 1
        var indexMin = arrMin.count - 1
        var isMore = false
        
        while indexMax >= 0 {
            
            if isMore {
                arrMax[indexMax] = arrMax[indexMax] + 1
                isMore = false
            }
            
            if indexMin >= 0 {
                isMore = (arrMax[indexMax] + arrMin[indexMin]) > 9
                arrMax[indexMax] = (arrMax[indexMax] + arrMin[indexMin]) % 10
            } else {
                isMore = arrMax[indexMax] > 9
                arrMax[indexMax] = arrMax[indexMax] % 10
            }
            
            indexMax -= 1
            indexMin -= 1
        }
        
        if isMore {
            arrMax.insert(1, at: 0)
        }
        
        return arrMax
    }
}

extension Int {
    func digits() -> [Int] {
        var digits: [Int] = []
        var num = self
        
        digits.append(num % 10)
        
        while num >= 10  {
            num = num / 10
            digits.append(num % 10)
        }
        
        return digits.reversed()
    }
}
