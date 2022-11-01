//
//  Average-Salary-Excluding-the-Minimum-and-Maximum-Salary.swift
//  
//
//  Created by Vyacheslav Pronin on 01.11.2022.
//

import Foundation

class Solution {
    func average(_ salary: [Int]) -> Double {
        guard !salary.isEmpty else { return 0 }
        var salary = salary.sorted()
        var count = salary.count
        var result = 0
        
        for elem in salary {
            if elem == salary[0] || elem == salary[salary.count - 1] {
                count -= 1
            } else {
                result += elem
            }
        }
        
        return Double(result) / Double(count)
    }
}
