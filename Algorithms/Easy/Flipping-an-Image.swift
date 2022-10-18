//
//  Flipping-an-Image.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        
        for elem in image {
            var index = elem.count - 1
            var arr = [Int]()
            
            while index >= 0 {
                arr.append(elem[index] == 1 ? 0 : 1)
                index -= 1
            }
            result.append(arr)
        }
        
        return result
    }
}
