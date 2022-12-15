//
//  Longest-Common-Subsequence.swift
//  
//
//  Created by Vyacheslav Pronin on 15.12.2022.
//

import Foundation

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
         let t1 = Array(text1)
        let t2 = Array(text2)
        var dp: [[Int]] = []
        for _ in stride(from: 0, to: t1.count  + 1, by: 1) {
            dp.append(Array(repeating: 0, count: t2.count + 1))
        }
        
        for col in stride(from: t2.count - 1, through: 0, by: -1) {
            for row in stride(from: t1.count - 1, through: 0, by: -1) {
                if t1[row] == t2[col] {
                    dp[row][col] = 1 + dp[row + 1][col + 1]
                } else {
                    dp[row][col] = max(dp[row + 1][col], dp[row][col + 1])
                }
            }
        }
        
        return dp[0][0]
    }
}
