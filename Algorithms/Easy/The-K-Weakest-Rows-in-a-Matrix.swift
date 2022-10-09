//
//  The-K-Weakest-Rows-in-a-Matrix.swift
//  
//
//  Created by Vyacheslav Pronin on 09.10.2022.
//

import Foundation

class Solution {
    typealias Cortuse = (index: Int, count: Int)
    
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var array = [Int]()
        var cortuseArr = [Cortuse]()
        var i = 0
        
        for index in 0..<mat.count {
            let count = getCount(mat[index])
            let cortuse = (index: index, count: count)
            
            cortuseArr.insert(cortuse, at: insertElem(cortuseArr, elem: cortuse))
        }
        
        while i < k {
            array.append(cortuseArr[i].index)
            i += 1
        }
        
        return array
    }
    
    
    func insertElem(_ array: [Cortuse], elem: Cortuse) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index].count > elem.count {
                right = index
            } else {
                left = index + 1
            }
        }
        
        if array.count == 1 {
            if array[0].count > elem.count {
                return 0
            } else if array[0].count == elem.count,
                      array[0].index > elem.index {
                return 0
            } else {
                return 1
            }
        }
        
        left = array[left].count == elem.count && array[left].index < elem.index ? left + 1 : left
        left = left == array.count - 1 && array[left].count < elem.count ? left + 1 : left
        return left
    }
    
    func getCount(_ array: [Int], numb: Int = 1) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let index = (left + right) / 2
            if array[index] >= numb {
                left = index + 1
            } else {
                right = index - 1
            }
        }
        
        left = left == 0 && array[left] == 0 ? -1 : left
        return left
    }
}
