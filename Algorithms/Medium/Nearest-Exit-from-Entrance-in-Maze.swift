//
//  Nearest-Exit-from-Entrance-in-Maze.swift
//  
//
//  Created by Vyacheslav Pronin on 21.11.2022.
//

import Foundation

class Solution {
    func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
        let m = maze.count
        let n = maze[0].count
        var queue = [[Int]]()
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        queue.append(entrance)
        visited[entrance[0]][entrance[1]] = true
        let dirs = [[0,1], [1,0], [0,-1], [-1,0]]
        var count = 0
        while queue.count > 0 {
            let size = queue.count
            for _ in 0..<size {
                let cur = queue.removeFirst()
                for dir in dirs {
                    let row = cur[0] + dir[0]
                    let col = cur[1] + dir[1]
                    if row < 0 || row >= m || col < 0 || col >= n {
                        if count != 0 {
                            return count
                        }
                    } else {
                        if !visited[row][col] && maze[row][col] == "." {
                            visited[row][col] = true
                            queue.append([row,col])
                        }
                    }
                }
            }
            count += 1
        }
        return -1
    }
}
