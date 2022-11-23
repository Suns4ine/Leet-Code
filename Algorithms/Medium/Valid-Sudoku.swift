//
//  Valid-Sudoku.swift
//  
//
//  Created by Vyacheslav Pronin on 23.11.2022.
//

import Foundation

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var set: Set<String> = Set()
        for x in 0..<9 {
            for y in 0..<9 where board[x][y] != "." {
                if !set.insert("\(x)(\(board[x][y]))").inserted ||
                    !set.insert("(\(board[x][y]))\(y)").inserted ||
                    !set.insert("\(x / 3)(\(board[x][y]))\(y / 3)").inserted {
                        return false
                    }
            }
        }
        return true
    }
}
