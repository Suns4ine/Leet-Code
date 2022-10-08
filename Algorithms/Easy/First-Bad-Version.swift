//
//  First-Bad-Version.swift
//  
//
//  Created by Vyacheslav Pronin on 08.10.2022.
//

import Foundation

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        guard n > 1 else { return n }
        var left = 1
        var right = n
        
        while left < right {
            var numb = (right + left) / 2
            if isBadVersion(numb) {
                right = numb
            } else {
                left = numb + 1
            }
        }
        
        return left
    }
}
