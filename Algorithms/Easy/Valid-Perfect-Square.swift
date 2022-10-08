//
//  Valid-Perfect-Square.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        guard num > 1 else { return true }
        var left = 2
        var right = num/2
        
        while left < right {
            let numb = (left + right) / 2
            
            if numb * numb >= num {
                right = numb
            } else {
                left = numb + 1
            }
        }
        
        return left * left == num
    }
}
