//
//  Contains-Duplicate.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
//

import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
       return Set(nums).count != nums.count
    }
}
