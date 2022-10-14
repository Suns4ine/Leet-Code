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
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return nil }
        
        var fast = head
        var slow = head
        var midle: ListNode?
        
        while fast?.next != nil {
            fast = fast?.next?.next
            midle = slow
            slow = slow?.next
        }
        
        midle?.next = slow?.next
        return head
    }
}
