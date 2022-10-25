//
//  Maximum-Length-of-a-Concatenated-String-with-Unique-Characters.swift
//  
//
//  Created by Vyacheslav Pronin on 25.10.2022.
//

import Foundation

class Solution {
    func maxLength(_ arr: [String]) -> Int {
        return check(arr: arr, index: 0, str: "")
    }
    
    func check(arr: [String], index: Int, str: String) -> Int {
        guard str.count == Set(str).count else { return 0 }
        var result = str.count
        
        for i in index..<arr.count {
            result = max(result, check(arr: arr, index: i + 1, str: str + arr[i]))
        }
        return result
    }
}
