//
//  Binary-Tree-Preorder-Traversal.swift
//  
//
//  Created by Vyacheslav Pronin on 09.01.2023.
//

import Foundation

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var result = [root.val]
        
        result += preorderTraversal(root.left)
        result += preorderTraversal(root.right)
        
        return result
    }
}
