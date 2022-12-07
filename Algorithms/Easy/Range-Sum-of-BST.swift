//
//  Range-Sum-of-BST.swift
//  
//
//  Created by Vyacheslav Pronin on 07.12.2022.
//

import Foundation

class Solution {
    var total = 0
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        let value = root?.val ?? 0
        let minValue = min(L, R)
        let maxValue = max(L, R)
        if value >= minValue && value <= maxValue {
            total += value
        }
        if root?.left != nil {
            rangeSumBST(root?.left, L, R)
        }
        if root?.right != nil {
            rangeSumBST(root?.right, L, R)
        }
        return total
    }
}
