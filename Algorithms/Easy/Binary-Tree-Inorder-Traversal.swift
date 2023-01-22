//
//  Binary-Tree-Inorder-Traversal.swift
//  
//
//  Created by Vyacheslav Pronin on 17.01.2023.
//

import Foundation

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
    }
}
