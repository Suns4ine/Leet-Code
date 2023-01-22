//
//  Maximum-Depth-of-Binary-Tree.swift
//  
//
//  Created by Vyacheslav Pronin on 16.01.2023.
//

import Foundation

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return max((maxDepth(root.left) + 1), (maxDepth(root.right) + 1))
    }
}
