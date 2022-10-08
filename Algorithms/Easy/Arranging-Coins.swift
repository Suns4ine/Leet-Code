//
//  Arranging-Coins.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var maxCoins = 0
        
        for index in 1...n {
            maxCoins = index + maxCoins
            if maxCoins == n {
                return index
            } else if maxCoins > n {
                return index - 1
            }
        }
        
        return 1
    }
    
    func arrangeCoins(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var left = 0
        var right = n
        
        while left <= right {
            let numb = (left + right) / 2
            let mid = numb * (numb + 1) / 2
            
            if mid == n { return numb }
            if mid > n {
                right = numb - 1
            } else {
                left = numb + 1
            }
        }
        
        return right
    }
}
