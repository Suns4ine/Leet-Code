//
//  Single-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { res, val in
            res ^ val
        }
    }
}
