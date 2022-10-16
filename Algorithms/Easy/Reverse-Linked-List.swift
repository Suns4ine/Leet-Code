//
//  Reverse-Linked-List.swift
//  
//
//  Created by Vyacheslav Pronin on 16.10.2022.
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var head = head else { return nil }
        var arr = [head.val]
        
        while let next = head.next {
            arr.append(next.val)
            head = next
        }
        
        var list = ListNode(arr.removeFirst())
        
        for elem in arr {
            let next = ListNode(elem, list)
            list = next
        }
        
        return list
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head,
              head.next != nil
        else { return head }
        
        let list = reverseList(head.next)
        
        head.next?.next = head
        head.next = nil
        
        return list
    }
}
