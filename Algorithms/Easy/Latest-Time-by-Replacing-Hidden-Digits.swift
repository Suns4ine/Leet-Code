//
//  Latest-Time-by-Replacing-Hidden-Digits.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func maximumTime(_ time: String) -> String {
        var result = Array(time)
        
        for index in 0..<result.count {
            if result[index] == "?" {
                switch index {
                case 0:
                    result[index] = Int(String(result[1])) ?? 0 < 4 ? "2" : "1"
                case 1:
                    result[index] = result[0] == "2" ? "3" :"9"
                case 3:
                    result[index] = "5"
                case 4:
                    result[index] = "9"
                default:
                    break
                }
            }
        }
        
        return String(result)
    }
}
