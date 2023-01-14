//
//  Same-Tree.swift
//  
//
//  Created by Vyacheslav Pronin on 10.01.2023.
//

import Foundation

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p != nil || q != nil else { return true }
        guard let p = p, let q = q else { return false }
        
        return isSameTree(p.left, q.left) && isSameTree(p.right, q.right) && p.val == q.val
    }
}
