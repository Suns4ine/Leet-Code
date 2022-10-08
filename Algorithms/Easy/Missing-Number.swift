//
//  Missing-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        let set = Set<Int>(nums)
        var numb = 0
        
        while numb != nums.count {
            if !set.contains(numb) {
                break
            }
            numb += 1
        }
        
        return numb
    }
}
