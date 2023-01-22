//
//  Binary-Tree-Postorder-Traversal.swift
//  
//
//  Created by Vyacheslav Pronin on 17.01.2023.
//

import Foundation

class Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
    }
}
