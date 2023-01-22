//
//  Find-the-Index-of-the-Large-Integer.swift
//  
//
//  Created by Vyacheslav Pronin on 15.01.2023.
//

import Foundation

class Solution {
    func getIndex(_ reader: ArrayReader) -> Int {
        var count = reader.length()
        var left = 0
        
        while count > 1 {
            count = count/2
            let res = reader.compareSub(left, left + count - 1, left + count, left + count + count - 1)
            
            if res == 0 {
                return left + count + count
            } else if res < 0 {
                left += count
            }
        }
        
        return left
    }
}
