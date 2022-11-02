//
//  Subtract-the-Product-and-Sum-of-Digits-of-an-Integer.swift
//  
//
//  Created by Vyacheslav Pronin on 02.11.2022.
//

import Foundation

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        guard n != 0 else { return 0 }
        var sum = 0
        var product = 1
        var n = n
        
        while n > 0 {
            sum += n % 10
            product *= n % 10
            n = n / 10
        }
        
        return product - sum
    }
}
