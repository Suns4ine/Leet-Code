//
//  Confusing-Number.swift
//  
//
//  Created by Vyacheslav Pronin on 06.01.2023.
//

import Foundation

class Solution {
    func confusingNumber(_ n: Int) -> Bool {
        let set: Set<Int> = [2, 3, 4, 5, 7]
        var numb = n
        var result = 0
        var count = 1
        
        while numb > 0 {
            let s = getCurrentNumb(numb % 10)
            guard !set.contains(s) else { return false }
            
            numb = numb / 10
            result *= count
            result += s
            count = 10
        }
        
        return n != result
    }
    
    func getCurrentNumb(_ numb: Int) -> Int {
        switch numb {
        case 6:
            return 9
        case 9:
            return 6
        default:
            return numb
        }
    }
}
