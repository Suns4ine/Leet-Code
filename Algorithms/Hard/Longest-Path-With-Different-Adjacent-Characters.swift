//
//  Longest-Path-With-Different-Adjacent-Characters.swift
//  
//
//  Created by Vyacheslav Pronin on 14.01.2023.
//

import Foundation

class Solution {
  func longestPath(_ parent: [Int], _ s: String) -> Int {
    let arr = Array(s)
    let n = arr.count
    
    var tree = Array(repeating: [Int](), count: n)
    for i in 0..<n where parent[i] != -1 {
      tree[parent[i]].append(i)
    }
    
    var res = 0
    func dfs(_ i: Int) -> Int {
      var (longestPath, secondLongestPath) = (0, 0)
      for j in tree[i] {
        let path = dfs(j)
        
        guard arr[i] != arr[j] else { continue }
        
        if path > longestPath {
          secondLongestPath = longestPath
          longestPath = path
        } else if path > secondLongestPath {
          secondLongestPath = path
        }
      }
      
      res = max(res, 1 + longestPath + secondLongestPath)
      return 1 + longestPath
    }
    
    dfs(0)
    
    return res
  }
}
