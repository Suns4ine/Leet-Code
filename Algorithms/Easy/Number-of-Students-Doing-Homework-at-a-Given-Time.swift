//
//  Number-of-Students-Doing-Homework-at-a-Given-Time.swift
//  
//
//  Created by Vyacheslav Pronin on 22.10.2022.
//

import Foundation

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var res = 0
        
        for i in 0..<startTime.count {
            res = (startTime[i]...endTime[i]).contains(queryTime) ? res + 1 : res
        }
        
        return res
    }
}
