//
//  Maximum-Difference-Between-Node-and-Ancestor.swift
//  
//
//  Created by Vyacheslav Pronin on 09.12.2022.
//

import Foundation

class Solution {
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
            
        return maxDiff(node, node.val, node.val)
    }
    
    private func maxDiff(_ root: TreeNode?, _ minVal: Int, _ maxVal: Int) -> Int {
        
        guard let node = root else {
            return abs(minVal - maxVal)
        }

        let minVal = min(minVal,  node.val)
        let maxVal = max(maxVal, node.val)
        let leftDiff = maxDiff(node.left, minVal, maxVal)
        let rightDiff = maxDiff(node.right, minVal, maxVal)
    
        return max(leftDiff, rightDiff)
    }
}
