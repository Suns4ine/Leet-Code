//
//  Delete-Node-in-a-Linked-List.swift
//  
//
//  Created by Vyacheslav Pronin on 13.10.2022.
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
    func deleteNode(_ node: ListNode?) {
        guard let node = node,
              let next = node.next
        else { return }
        
        node.val = next.val
        node.next = next.next
    }
}
