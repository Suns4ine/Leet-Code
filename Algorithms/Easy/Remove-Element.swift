//
//  Remove-Element.swift
//  
//
//  Created by Vyacheslav Pronin on 21.10.2021.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var array: [Int] = nums.filter{ $0 != val }
        nums = array
        return array.count
    }
}
