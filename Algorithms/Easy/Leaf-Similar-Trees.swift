//
//  Leaf-Similar-Trees.swift
//  
//
//  Created by Vyacheslav Pronin on 08.12.2022.
//

import Foundation

class Solution {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var arr1:[Int] = []
        var arr2:[Int] = []
        helper(root1, &arr1)
        helper(root2, &arr2)
        return arr1.elementsEqual(arr2)
    }
    
    func helper(_ root: TreeNode?, _ arr:inout [Int]){
        guard let node = root else { return }
        helper(node.left, &arr)
        if node.left == nil && node.right == nil { arr.append(node.val) }
        helper(node.right, &arr)
    }
}
