//
//  Integer-to-Roman.swift
//  
//
//  Created by Vyacheslav Pronin on 20.10.2022.
//

import Foundation

class Solution {
    func intToRoman(_ num: Int) -> String {
        guard num > 0 && num < 4000 else { return "" }
        var dict: [Int: String] = [1 : "I", 5 : "V",  10 : "X", 50 : "L", 100 : "C", 500 : "D", 1000 : "M"]
        var big = getBigNumber(num)
        var result = ""
        var num = num
        
        while num > 0 {
            var k = num / big
            num = num % big

            switch k {
            case  1...3:
                result += String(repeating: dict[big]!, count: k)
            case 4...5:
                result += (k % 5 == 0 ? "" : dict[big]!) + dict[big * 5]!
            case 6...8:
                result += dict[big * 5]! + String(repeating: dict[big]!, count: k % 5)
            default:
                result += (k % 10 == 0 ? "" : dict[big]!) + dict[big == 1000 ? big : big * 10]!
            }
            
            big = getBigNumber(num)
        }
        
        
        return result
    }
    
    func getBigNumber(_ n: Int) -> Int {
        guard n > 9 else { return 1 }
        return getBigNumber(n/10) * 10
    }
}
