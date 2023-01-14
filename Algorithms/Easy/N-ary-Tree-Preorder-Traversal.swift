//
//  N-ary-Tree-Preorder-Traversal.swift
//  
//
//  Created by Vyacheslav Pronin on 10.01.2023.
//

import Foundation

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        var result = [root.val]
        
        for child in root.children {
            result += preorder(child)
        }
        
        return result
    }    
}
