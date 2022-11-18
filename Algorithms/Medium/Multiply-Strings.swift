//
//  Multiply-Strings.swift
//  
//
//  Created by Vyacheslav Pronin on 17.11.2022.
//

import Foundation

class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        var num1 = Array(num1.compactMap{ Int(String($0)) }.reversed())
        var num2 = Array(num2.compactMap{ Int(String($0)) }.reversed())
        var result = [Int]()
        
        guard num1.last ?? 0 != 0 && num2.last ?? 0 != 0 else { return "0" }
        
        for i in 0..<num1.count {
            
            for j in 0..<num2.count {
                var arr = Array(repeating: 0, count: i + j) + (num2[j] * num1[i]).digitsReverse()
                result = sumArrayNumbers(result, arr)
            }
        }
        
        return String(result.map { String($0) }.joined().reversed())
    }
    
    func sumArrayNumbers(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var arrMax = arr1.count > arr2.count ? arr1 : arr2
        let arrMin = arr1.count > arr2.count ? arr2 : arr1
        var index = 0
        var isMore = false
        
        while index < arrMax.count {
            
            if isMore {
                arrMax[index] = arrMax[index] + 1
                isMore = false
            }
            
            if index < arrMin.count {
                isMore = (arrMax[index] + arrMin[index]) > 9
                arrMax[index] = (arrMax[index] + arrMin[index]) % 10
            } else {
                isMore = arrMax[index] > 9
                arrMax[index] = arrMax[index] % 10
            }
            
            index += 1
        }
        
        if isMore {
            arrMax.append(1)
        }
        
        return arrMax
    }
}

extension Int {
    func digitsReverse() -> [Int] {
        var digits: [Int] = []
        var num = self
        
        digits.append(num % 10)
        
        while num >= 10  {
            num = num / 10
            digits.append(num % 10)
        }
        
        return digits
    }
}
