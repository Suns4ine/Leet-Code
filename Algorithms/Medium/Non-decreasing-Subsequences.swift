//
//  Non-decreasing-Subsequences.swift
//  
//
//  Created by Vyacheslav Pronin on 22.01.2023.
//

import Foundation

class Solution {
    func calculateSubsequence(_ i: Int,_ num: [Int],_ result:inout [[Int]],_ current:inout [Int],_ prev: Int){
        if current.count > 1{
            if !result.contains(current){
                result.append(current)
            }
        }
        for j in i..<num.count{
            if prev <= num[j]{
                current.append(num[j])
                calculateSubsequence(j+1, num, &result, &current,num[j])
                current.popLast()
            }
        }
    }
    
    func findSubsequences(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var current = [Int]()
        var prev = Int.min
        calculateSubsequence(0, nums, &result, &current,prev)
        return result
    }
}
