//
//  Partition-Labels.swift
//  
//
//  Created by Vyacheslav Pronin on 07.11.2022.
//

import Foundation

class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        var result = [Int]()
        var s = Array(s)
        var count = 0
        var lastIndex = 0
        
        for (index, elem) in s.enumerated() {
            lastIndex = max(lastIndex, getLastIndex(elem, arr: s))
            
            if index == lastIndex {
                result.append(index - count + 1)
                count = index + 1
            }
        }
        
        return result
    }
    
    func getLastIndex(_ elem: String.Element, arr: [String.Element]) -> Int {
        guard !arr.isEmpty else { return -1 }
        var index = arr.count - 1
        
        while index > 0 {
            guard arr[index] != elem else { return index }
            index -= 1
        }
        
        return index
    }
}
