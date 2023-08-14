//
//  Data-Stream-as-Disjoint-Intervals.swift
//  
//
//  Created by Vyacheslav Pronin on 28.01.2023.
//

import Foundation

class SummaryRanges {
    
    private var arr = [Int]()
    private var set: Set<Int> = []

    init() {}
    
    func addNum(_ value: Int) {
        guard !set.contains(value) else { return }
        set.insert(value)
        arr.insert(value, at: getCurrentIndex(value))
    }
    
    func getIntervals() -> [[Int]] {
        guard !arr.isEmpty else { return [] }
        var result: [[Int]] = []
        var smalArr = [Int]()
        
        for elem in arr {
            switch smalArr {
            case let currArr where currArr.isEmpty:
                smalArr = [elem, elem]
            default:
                if elem - smalArr.last! == 1 {
                    smalArr[1] = elem
                } else {
                    result.append(smalArr)
                    smalArr = [elem, elem]
                }
            }
        }
        
        result.append(smalArr)
        
        return result
    }
    
    private func getCurrentIndex(_ numb: Int) -> Int {
        guard !arr.isEmpty else { return 0 }
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            let index = (left + right)/2
            
            if arr[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return arr[left] < numb ? left + 1 : left
    }
}
