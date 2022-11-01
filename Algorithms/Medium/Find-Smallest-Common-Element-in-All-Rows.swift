//
//  Find-Smallest-Common-Element-in-All-Rows.swift
//  
//
//  Created by Vyacheslav Pronin on 01.11.2022.
//

import Foundation

class Solution {
    func smallestCommonElement(_ mat: [[Int]]) -> Int {
        guard mat.count > 1 else { return mat[0][0] }
        var setArray = mat.compactMap{ Set($0) }
        var isTrue = false
        
        for i in 0..<mat[0].count {
            for j in 1..<setArray.count {
                guard setArray[j].contains(mat[0][i]) else { isTrue = false; break }
                isTrue = true
            }
            if isTrue {
                return mat[0][i]
            }
        }
        
        return -1
    }
}
