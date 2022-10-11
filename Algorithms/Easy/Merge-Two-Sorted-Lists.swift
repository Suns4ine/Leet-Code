//
//  Merge-Two-Sorted-Lists.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard var list1 = list1 else { return list2 }
        guard var list2 = list2 else { return list1 }
        
        var arr = [list1.val]
        arr.insert(list2.val, at: isIndex(arr, numb: list2.val))
        
        while let next1 = list1.next {
            arr.insert(next1.val, at: isIndex(arr, numb: next1.val))
            list1 = next1
        }
        
        while let next2 = list2.next {
            arr.insert(next2.val, at: isIndex(arr, numb: next2.val))
            list2 = next2
        }
        
        var max = arr.count - 1
        var list = ListNode(arr[max])
        max -= 1
        
        while max >= 0 {
            let next = ListNode(arr[max], list)
            max -= 1
            list = next
        }
        
        return list
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
        
        return array[left] < numb ? left + 1 : left
    }
}
