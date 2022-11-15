//
//  Count-Complete-Tree-Nodes.swift
//  
//
//  Created by Vyacheslav Pronin on 15.11.2022.
//

import Foundation

class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        return root != nil ? 1 + countNodes(root?.right) + countNodes(root?.left) : 0
    }
}
