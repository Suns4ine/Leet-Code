//
//  Remove-Linked-List-Elements.swift
//  
//
//  Created by Vyacheslav Pronin on 16.12.2022.
//

import Foundation

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if(head == nil) {
            return nil
        }
        var current = head
        while (current!.next != nil) {
            if(current!.next!.val == val) {
                current!.next = current!.next!.next
            }
            else {
                current = current!.next
            }
        }
        return head!.val == val ? head!.next : head!
    }
}
