//
//  Restore-IP-Addresses.swift
//  
//
//  Created by Vyacheslav Pronin on 22.01.2023.
//

import Foundation

class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        let s = s.map { Int($0.asciiValue!) - 48 }
        var result = [String]()
        
        func dfs(_ start: Int, _ list: [Int] = .init()) -> Bool {
            guard list.count < 4 || start < s.count else { return list.count == 4 && start == s.count }
            var number = 0, i = start, end = start + min(s.count-start, 3)
            while i < end {
                number = number * 10 + s[i]
                if number > 255 { break }
                let newList = list + [number]
                if dfs(i+1, newList) {
                    result.append(newList.map(String.init).joined(separator: "."))
                }
                if number == 0 { break }
                i += 1
            }
            return false
        }
        
        dfs(0)
        return result
    }
}
