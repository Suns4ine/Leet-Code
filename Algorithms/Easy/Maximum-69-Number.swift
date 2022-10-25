//
//  Maximum-69-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var result = String(num)
        var startIndex = result.startIndex
        
        while startIndex < result.endIndex {
            if result[startIndex] == "6" {
                result.remove(at: startIndex)
                result.insert("9", at: startIndex)
                break
            }
            
            startIndex = result.index(after: startIndex)
        }
        
        return Int(result) ?? num
    }
}
