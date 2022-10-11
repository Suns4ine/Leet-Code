//
//  Remove-Duplicates-from-Sorted-List.swift
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var head = head else { return nil }
        var arr = [head.val]
        var set: Set<Int> = [head.val]
        
        while let next = head.next {
            if !set.contains(next.val) {
                arr.append(next.val)
                set.insert(next.val)
            }
            head = next
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
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var head = head else { return nil }
        var arr = [head.val]
        
        while let next = head.next {
            if !isDublicate(arr, numb: next.val) {
                arr.append(next.val)
            }
            head = next
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
    
    func isDublicate(_ array: [Int], numb: Int) -> Bool {
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
