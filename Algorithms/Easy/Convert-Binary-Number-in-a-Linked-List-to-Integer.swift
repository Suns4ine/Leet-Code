//
//  Convert-Binary-Number-in-a-Linked-List-to-Integer.swift
//  
//
//  Created by Vyacheslav Pronin on 16.01.2023.
//

import Foundation

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        guard var head = head else { return 0 }
        var str = "\(head.val)"
        
        while let next = head.next {
            str += String(next.val)
            head = next
        }
        
        return Int(str, radix: 2) ?? 0
    }
}
