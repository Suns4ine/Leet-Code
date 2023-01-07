//
//  Delete-Columns-to-Make-Sorted.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func minDeletionSize(_ strs: [String]) -> Int {
        guard strs.count > 1 else { return 0 }
        var result = 0
        var array: [[String.Element]] = Array(repeating: [], count: strs[0].count)
        
        for str in strs {
            var count = 0
            for elem in str {
                array[count].append(elem)
                count += 1
            }
        }
        
        for arr in array {
            result += arr != arr.sorted() ? 1 : 0
        }
        
        return result
    }
}
