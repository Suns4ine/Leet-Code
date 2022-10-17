//
//  Pascal's-Triangle.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
//

import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]] }
        var result = [[1]]
        
        for row in 0..<numRows - 1 {
            let elem = result[row]
            var arr = [Int]()
            
            for index in 0..<elem.count {
                
                if index == 0 {
                    arr.append(elem[index])
                }
                
                if index > 0 {
                    arr.append(elem[index - 1] + elem[index])
                }
                
                if index == elem.count - 1 {
                    arr.append(elem[index])
                }
                
            }
            
            result.append(arr)
        }
        
        return result
    }
}
