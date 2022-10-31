//
//  Toeplitz-Matrix.swift
//  
//
//  Created by Vyacheslav Pronin on 31.10.2022.
//

import Foundation

class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        guard matrix.count > 1,
              matrix[0].count > 1
        else { return true }
        var arr = matrix[0]
        
        for i in 1..<matrix.count {
            var currArr = matrix[i]
            
            for j in 1..<currArr.count {
                guard arr[j - 1] == currArr[j] else { return false }
            }
            arr = currArr
        }
        
        return true
    }
}
