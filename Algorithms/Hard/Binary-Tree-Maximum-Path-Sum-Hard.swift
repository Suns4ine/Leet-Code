//
//  Binary-Tree-Maximum-Path-Sum-Hard.swift
//  
//
//  Created by Vyacheslav Pronin on 11.12.2022.
//

import Foundation

class Solution {
    func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSoFar = Int.min
        
        helper(root, &maxSoFar)
        return maxSoFar
    }
    
    func helper(_ root:TreeNode?, _ maxSoFar:inout Int) ->Int {
        if (root == nil) {
            return 0
        }
        let leftValue = max(0,helper(root!.left, &maxSoFar))
        let rightValue = max(0,helper(root!.right, &maxSoFar))

        let rootMax = root!.val + leftValue + rightValue
        maxSoFar = max(maxSoFar, rootMax)
        return max(leftValue,rightValue) + root!.val
    }
}
