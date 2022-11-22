//
//  Perfect-Squares.swift
//  
//
//  Created by Vyacheslav Pronin on 22.11.2022.
//

import Foundation

class Solution {
    func numSquares(_ n: Int) -> Int {
        guard n > 1 else { return n }
        
        var dp = Array(0...n+1)
        var squares = [Int]()
        var squareNum = 1
        
        while(squareNum * squareNum <= n) {
            squares.append(squareNum * squareNum)
            squareNum += 1
        }

        for i in 2...n {
            for square in squares {
                if(square <= i) {
                    dp[i] = min(dp[i], dp[i - square] + 1)
                }
            }
        }
        return dp[n]
    }
}
