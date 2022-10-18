//
//  Intersection-of-Two-Linked-Lists.swift
//  
//
//  Created by Vyacheslav Pronin on 18.10.2022.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard var headA = headA,
              var headB = headB
        else { return nil }
        guard headA !== headB else { return headA }
        
        var set: Set<UnsafeMutableRawPointer> = [headA.address, headB.address]
        
        while let next = headA.next {
            if set.contains(next.address) {
                return next
            }
            set.insert(next.address)
            headA = next
        }
        
        while let next = headB.next {
            if set.contains(next.address) {
                return next
            }
            set.insert(next.address)
            headB = next
        }
        
        return nil
    }
    
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard let headA = headA,
              let headB = headB
        else { return nil }
        
        var a: ListNode? = headA
        var b: ListNode? = headB
        
        while a !== b {
            a = a == nil ? headB : a?.next
            b = b == nil ? headA : b?.next
        }
        
        return a
    }
    
}

extension ListNode {
    var address: UnsafeMutableRawPointer {
        return Unmanaged.passUnretained(self).toOpaque()
    }
}
