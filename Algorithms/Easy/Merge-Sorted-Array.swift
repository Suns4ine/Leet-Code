//
//  Merge-Sorted-Array.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

class Solution {
    
    // Slower: Min 24 Ms
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m > 0 else { nums1 = nums2; return }
        var m = m
        
        for elem in nums2 {
            let index = isIndex(nums1, max: m, numb: elem)
            
            if nums1[index] == 0  && index >= m {
                nums1[index] = elem
            } else {
                nums1.removeLast()
                nums1.insert(elem, at: isIndex(nums1, max: m, numb: elem))
            }
            m += 1
        }
    }
    
    func isIndex(_ array: [Int], max: Int,  numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
        var left = 0
        var right = max - 1
        
        while left < right {
            let index = (left + right) / 2
            
            if array[index] >= numb {
                right = index
            } else {
                left = index + 1
            }
        }
        
        return array[left] <= numb ? left + 1 : left
    }
    
    // Faster: Max 18 Ms
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m > 0 else { nums1 = nums2; return }
        var n = n
        
        while n != 0 {
            nums1.removeLast()
            n -= 1
        }
        
        for elem in nums2 {
            nums1.insert(elem, at: isIndex(nums1, numb: elem))
        }
    }
    
    func isIndex(_ array: [Int], numb: Int) -> Int {
        guard !array.isEmpty else { return 0 }
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
        
        return array[left] <= numb ? left + 1 : left
    }
}
