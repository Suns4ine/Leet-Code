//
//  Orderly-Queue.swift
//  
//
//  Created by Vyacheslav Pronin on 06.11.2022.
//

import Foundation

class Solution {
    func orderlyQueue(_ s: String, _ k: Int) -> String {
        var arr = Array(s)
        
        if k == 1 {
            var res = String(arr)
            for i in 0..<s.count {
                res = min(res, String(arr[i..<arr.endIndex] + arr[0..<i]))
            }
            return res
        } else {
            return String(arr.sorted { $0 < $1 })
        }
        
    }
}
