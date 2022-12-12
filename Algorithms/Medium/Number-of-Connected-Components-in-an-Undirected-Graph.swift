//
//  Number-of-Connected-Components-in-an-Undirected-Graph.swift
//  
//
//  Created by Vyacheslav Pronin on 12.12.2022.
//

import Foundation

class Solution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        var count = 0
        var adjacentList = Array(repeating:[Int](),count:n)
        for edge in edges {
            adjacentList[edge[0]].append(edge[1])
            adjacentList[edge[1]].append(edge[0])
        }
        var visited = Array(repeating:false,count:n)
        for i in 0..<n {
            if(!visited[i]) {
                count += 1
                dfsHelper(&visited,i, adjacentList)
            }
        }
        return count
        
    }
    
    func dfsHelper(_ visited:inout [Bool], _ i:Int, _ adjacencyList:[[Int]]) {
        visited[i] = true
        for edge in adjacencyList[i] {
            if(!visited[edge]) {
                visited[edge] = true
                dfsHelper(&visited, edge,adjacencyList)
            }
        }
    }
}
