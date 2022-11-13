//
//  Nested-List-Weight-Sum.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class Solution {
    func depthSum(_ nestedList: [NestedInteger]) -> Int {
        return dfs(nestedList, depth: 1)
    }
    
    func dfs(_ lists: [NestedInteger], depth: Int) -> Int {
        var result = 0
        
        for list in lists {
            if list.isInteger() {
                result += list.getInteger() * depth
            } else {
                result += dfs(list.getList(), depth: depth + 1)
            }
        }
        return result
    }
}
