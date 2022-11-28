//
//  Find-Players-With-Zero-or-One-Losses.swift
//  
//
//  Created by Vyacheslav Pronin on 28.11.2022.
//

import Foundation

class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var players: Set<Int> = []
        var dict: [Int : Int] = [:]
        
        for match in matches {
            players.insert(match[0])
            players.insert(match[1])
            
            dict[match[1], default: 0] += 1
        }
        
        let arrPlayers = Array(players).sorted()
        
        var ans: [[Int]] = [[], []]
        
        for i in arrPlayers {
            if let val = dict[i] {
                if val == 1 {
                    ans[1].append(i)
                }
            } else {
                ans[0].append(i)
            }
        }
        
        return ans
    }
}
