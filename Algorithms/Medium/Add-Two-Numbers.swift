//
//  Add-Two-Numbers.swift
//  
//
//  Created by Vyacheslav Pronin on 11.10.2022.
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard var l1 = l1 else { return l2 }
        guard var l2 = l2 else { return l1 }
        
        var arrL1 = [l1.val]
        var arrL2 = [l2.val]
        
        while let next = l1.next {
            arrL1.append(next.val)
            l1 = next
        }
        
        while let next = l2.next {
            arrL2.append(next.val)
            l2 = next
        }
        
        let arrSum = sumArrayNumbers(arrL1, arrL2)
        var max = arrSum.count - 1
        var list = ListNode(arrSum[max])
        max -= 1
        
        while max >= 0 {
            let next = ListNode(arrSum[max], list)
            max -= 1
            list = next
        }
        
        return list
    }
    
    func sumArrayNumbers(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var arrMax = arr1.count > arr2.count ? arr1 : arr2
        let arrMin = arr1.count > arr2.count ? arr2 : arr1
        var index = 0
        var isMore = false
        
        while index < arrMax.count {
            
            if isMore {
                arrMax[index] = arrMax[index] + 1
                isMore = false
            }
            
            if index < arrMin.count {
                isMore = (arrMax[index] + arrMin[index]) > 9
                arrMax[index] = (arrMax[index] + arrMin[index]) % 10
            } else {
                isMore = arrMax[index] > 9
                arrMax[index] = arrMax[index] % 10
            }
            
            index += 1
        }
        
        if isMore {
            arrMax.append(1)
        }
        
        return arrMax
    }
}
