//
//  Number-of-Nodes-in-the-Sub-Tree-With-the-Same-Label.swift
//  
//
//  Created by Vyacheslav Pronin on 13.01.2023.
//

import Foundation

class Solution {
    func countSubTrees(_ n: Int, _ edges: [[Int]], _ labels: String) -> [Int] {
        let labels = Array(labels)
        var graph = [Int: [Int]]()
        
        for e in edges {
            graph[e[0], default: []].append(e[1])
            graph[e[1], default: []].append(e[0])
        }
        
        var dict = [Character: [Int]]()
        var result = Array(repeating: 0, count: n)
        var visited = Set<Int>()
        visited.insert(0)
        
        func dfs(_ node: Int, _ label: Character) {
            dict[label, default: []].append(node)
            for node in dict[label] ?? [] {
                
                result[node] += 1
            }
            for neighbour in graph[node] ?? [] where !visited.contains(neighbour) {
                visited.insert(neighbour)
                dfs(neighbour, labels[neighbour])
            }
            dict[label, default: []].removeLast()
        }
        
        dfs(0, labels[0])
        return result
    }
}
