//
//  Palindrome-Linked-List.swift
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
    var list: ListNode?
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        list = head
        return (head == nil) ? false : checkPalindrome(head)
    }
    
    private func checkPalindrome(_ head: ListNode?) -> Bool {
        var flag = true
        
        if head?.next != nil {
            flag = checkPalindrome(head?.next)
        }
        
        if (flag && list?.val == head?.val) {
            list = list?.next
            return true
        }
        return false
    }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard var head = head else { return false }
        var arr = [head.val]
        
        while let next = head.next {
            arr.append(next.val)
            head = next
        }
        
        var max = arr.count - 1
        
        for index in 0..<arr.count {
            if index >= max { return true }
            if arr[index] != arr[max] { return false }
            max -= 1
        }
        
        return false
    }
}
