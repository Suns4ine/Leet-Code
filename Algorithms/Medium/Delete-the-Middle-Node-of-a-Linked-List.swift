//
//  Delete-the-Middle-Node-of-a-Linked-List.swift
//  
//
//  Created by Vyacheslav Pronin on 14.10.2022.
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
        guard var head = head,
              head.next != nil
        else { return nil }
        
        var count = 1
        let oldNode = head
        var middleNode = head
        
        while let next = head.next {
            head = next
            count += 1
        }
        
        guard count > 2 else {
            oldNode.next = nil
            return oldNode
        }
        
        count = count/2
        
        while count != 0 {
            if let next = middleNode.next {
                middleNode = next
            }
            count -= 1
        }
        deleteNode(middleNode)
        return oldNode
    }
    
    func deleteNode(_ node: ListNode?) {
        guard let node = node,
              let next = node.next
        else { return }
        
        node.val = next.val
        node.next = next.next
    }
}
