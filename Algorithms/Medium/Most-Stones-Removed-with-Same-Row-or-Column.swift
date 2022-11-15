//
//  Most-Stones-Removed-with-Same-Row-or-Column.swift
//  
//
//  Created by Vyacheslav Pronin on 14.11.2022.
//

import Foundation

class Solution {
    func removeStones(_ stones: [[Int]]) -> Int {
        guard stones.count != 1 else { return 0 }
        var graph: [Int: [Int]] = [:]
        var stones = stones
        var removed: Int = 0
        var visited: [Int] = Array(repeating: 0, count: stones.count)
        
        for i in 0 ..< stones.count {
            for j in (i + 1) ..< stones.count {
                if stones[j][0] == stones[i][0] ||  stones[j][1] == stones[i][1] {
                    graph[i,default:[]].append(j)
                    graph[j,default:[]].append(i)
                }
            }
        }
        
        for i in 0 ..< stones.count {
            if visited[i] == 0 {
                dfs(i)
                removed += 1
            }
        }
        
        func dfs(_ src: Int) {
            visited[src] = 1
            for nei in graph[src] ?? [] {
                if visited[nei] == 0 {
                    dfs(nei)
                }
            }
        }
        return stones.count -  removed
    }
}
