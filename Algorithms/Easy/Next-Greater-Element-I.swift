//
//  Next-Greater-Element-I.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let m = nums1.count
        let n = nums2.count
        var res = Array(repeating: 0, count: m)
        var stack:[Int] = []
        var map:[Int:Int] = [:]
        for item in nums2{
            while !stack.isEmpty && item > stack.last!{
                map[stack.popLast()!] = item
            }
            stack.append(item)
        }
        for i in 0..<m{
            let item = nums1[i]
            if let next = map[item]{
                res[i] = next
            }else{
                res[i] = -1
            }
        }
        return res
    }
}
