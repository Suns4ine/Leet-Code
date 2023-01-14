//
//  Richest-Customer-Wealth.swift
//  
//
//  Created by Vyacheslav Pronin on 12.01.2023.
//

import Foundation

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = 0
        
        for account in accounts {
            result = max(result, account.reduce(0, +))
        }
        
        return result
    }
}
