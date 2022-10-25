//
//  Largest-Odd-Number-in-String.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func largestOddNumber(_ num: String) -> String {
        var num = num
        
        for char in num.reversed() {
            if (Int(String(char)) ?? 0) % 2 == 0 {
                num.removeLast()
                continue
            }
            break
        }
        
        return num
    }
}
