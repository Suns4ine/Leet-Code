//
//  Odd-Even-Linked-List.swift
//  
//
//  Created by Vyacheslav Pronin on 06.12.2022.
//

import Foundation

class Solution {
    func addLastNode(head: ListNode?, node: ListNode?) -> ListNode? {
        guard var head = head else { return node }
        guard var next = head.next else { head.next = node; return head }
        var last = next

        while let next = last.next {
            last = next
        }
        last.next = node

        return head
    }
    
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard var head = head else { return head }
        var honestHead = addLastNode(head: nil, node: ListNode(head.val))
        var notHonestHead: ListNode? = nil
        var count = 1
        
        while let next = head.next {
            if count % 2 == 0 {
                honestHead = addLastNode(head: honestHead, node: ListNode(next.val))
            } else {
                notHonestHead = addLastNode(head: notHonestHead, node: ListNode(next.val))
            }
            head = next
            count += 1
        }
        
        return addLastNode(head: honestHead, node: notHonestHead)
    }
}
