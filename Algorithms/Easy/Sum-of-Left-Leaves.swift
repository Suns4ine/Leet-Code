//
//  Sum-of-Left-Leaves.swift
//  
//
//  Created by Vyacheslav Pronin on 16.01.2023.
//

import Foundation

class Solution {
    
    enum SideNode {
        case left
        case right
    }
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        return sumLeft(.right, root: root)
    }
    
    func sumLeft(_ node: SideNode, root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        guard root.left != nil || root.right != nil else { return node == .left ? root.val : 0 }
        return sumLeft(.left, root: root.left) + sumLeft(.right, root: root.right)
    }
}
