//
//  Intersection-of-Three-Sorted-Arrays.swift
//  
//
//  Created by Vyacheslav Pronin on 15.10.2022.
//

import Foundation

class Solution {
    func arraysIntersection(_ arr1: [Int], _ arr2: [Int], _ arr3: [Int]) -> [Int] {
        var result = [Int]()
        
        for elem in arr1 {
            if hasElement(arr2, numb: elem),
               hasElement(arr3, numb: elem) {
                result.append(elem)
            }
        }
        
        return result
    }
    
    func hasElement(_ array: [Int], numb: Int) -> Bool {
        guard !array.isEmpty else { return false }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] == numb
    }
}
