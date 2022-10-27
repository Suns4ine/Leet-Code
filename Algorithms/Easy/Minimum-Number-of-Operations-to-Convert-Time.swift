//
//  Minimum-Number-of-Operations-to-Convert-Time.swift
//  
//
//  Created by Vyacheslav Pronin on 27.10.2022.
//

import Foundation

class Solution {
    func convertTime(_ current: String, _ correct: String) -> Int {
        guard current != correct else { return 0 }
        var result = 0
        var current = (hour: Int(current[..<current.index(current.startIndex, offsetBy: 2)])!,
                       minute: Int(current[current.index(current.endIndex, offsetBy: -2)...])!)
        
        var correct = (hour: Int(correct[..<correct.index(correct.startIndex, offsetBy: 2)])!,
                       minute: Int(correct[correct.index(correct.endIndex, offsetBy: -2)...])!)
        
        var diff = current.minute > correct.minute ? correct.minute - current.minute + 60 : correct.minute - current.minute
        result += current.minute > correct.minute ? correct.hour - current.hour - 1 : correct.hour - current.hour
        
        while diff > 0 {
            switch diff {
            case 15...:
                diff -= 15
            case 5...:
                diff -= 5
            default:
                return result + diff
            }
            result += 1
        }
        
        return result
    }
}
