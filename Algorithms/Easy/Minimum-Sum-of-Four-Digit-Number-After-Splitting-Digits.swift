//
//  Minimum-Sum-of-Four-Digit-Number-After-Splitting-Digits.swift
//  
//
//  Created by Vyacheslav Pronin on 27.10.2022.
//

import Foundation

class Solution {
    func minimumSum(_ num: Int) -> Int {
        var arr = [Int]()
        
        for char in String(num) {
            arr.append(char.wholeNumberValue ?? 0)
        }
        
        arr = arr.sorted()
        return (arr[0] * 10 + arr[2]) + (arr[1] * 10 + arr[3])
        
    }
}
