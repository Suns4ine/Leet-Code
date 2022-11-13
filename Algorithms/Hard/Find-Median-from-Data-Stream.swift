//
//  Find-Median-from-Data-Stream.swift
//  
//
//  Created by Vyacheslav Pronin on 12.11.2022.
//

import Foundation

class MedianFinder {
    
    private var arr = [Int]()
    init() {}
    
    func addNum(_ num: Int) {
        arr.insert(num, at: getCurrentIndex(arr, numb: num))
    }
    
    func findMedian() -> Double {
        guard !arr.isEmpty else { return 0 }
        let mid = arr.count/2
        
        if arr.count % 2 == 0 {
            return (Double(arr[mid - 1] + arr[mid]))/2
        } else {
            return Double(arr[mid])
        }
    }
}

func getCurrentIndex(_ arr: [Int], numb: Int) -> Int {
    guard !arr.isEmpty else { return 0 }
    var left = 0
    var right = arr.count - 1
    
    while left < right {
        let index = (left + right) / 2
        
        if arr[index] >= numb {
            right = index
        } else {
            left = index + 1
        }
    }
    
    return arr[left] <= numb ? left + 1 : left
}
/**
 * Your MedianFinder object will be instantiated and called as such:
 * let obj = MedianFinder()
 * obj.addNum(num)
 * let ret_2: Double = obj.findMedian()
 */
