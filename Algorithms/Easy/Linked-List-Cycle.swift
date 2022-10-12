//
//  Linked-List-Cycle.swift
//  
//
//  Created by Vyacheslav Pronin on 12.10.2022.
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
    func hasCycle(_ head: ListNode?) -> Bool {
        guard var head = head else { return false }
        var dict: [Int: Set<UnsafeMutableRawPointer>] = [:]
        
        while let next = head.next {
            if var value = dict[next.val] {
                if value.contains(Unmanaged.passUnretained(next).toOpaque()) {
                    return true
                }
                value.insert(Unmanaged.passUnretained(next).toOpaque())
                dict[next.val] = value
            } else {
                dict[next.val] = Set(arrayLiteral: Unmanaged.passUnretained(next).toOpaque())
            }
            head = next
        }
        return false
    }
}
