//
//  Middle-of-the-Linked-List.swift
//  
//
//  Created by Vyacheslav Pronin on 10.10.2022.
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
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard var head = head else { return nil }
        var arr = [head.val]
        
        while let next = head.next {
            arr.append(next.val)
            head = next
        }
        
        let min = arr.count / 2
        var max = arr.count - 1
        var list = ListNode(arr[max])
        
        max -= 1
        
        while min <= max {
            let next = ListNode(arr[max], list)
            max -= 1
            list = next
        }
        
        return list
    }
}
