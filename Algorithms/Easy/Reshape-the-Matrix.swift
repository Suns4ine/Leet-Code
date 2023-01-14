//
//  Reshape-the-Matrix.swift
//  
//
//  Created by Vyacheslav Pronin on 13.01.2023.
//

import Foundation

class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        guard mat.first!.count * mat.count == r * c else { return mat }
        let mat = mat.flatMap{ $0 }
        var result: [[Int]] = []
        var rCount = 0
        var i = 0
        
        while rCount < r {
            var array = [Int]()
            var cCount = 0
            
            while cCount < c {
                array.append(mat[i])
                i += 1
                cCount += 1
            }
            result.append(array)
            rCount += 1
        }
        
        return result
    }
}
